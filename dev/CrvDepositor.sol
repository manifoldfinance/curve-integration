// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "./Interfaces.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";

contract CrvDepositor {
    using SafeERC20 for IERC20;
    using Address for address;
    using SafeMath for uint;

    address public constant crv = address(0xD533a949740bb3306d119CC777fa900bA034cd52);
    address public constant chi = address(0x0000000000004946c0e9F43F4Dee607b0eF1fA1c);
    address public constant escrow = address(0x5f3b5DfEb7B28CDbD7FAba78963EE202a494e2A2);
    uint private constant MAXTIME = 4 * 364 * 86400;
    uint private constant WEEK = 7 * 86400;

    uint public lockIncentive = 10; //incentive to users who spend gas to lock crv
    uint public constant FEE_DENOMINATOR = 10000;

    address public feeManager;
    address public staker;
    address public minter;
    uint public incentiveCrv = 0;
    uint public unlockTime;
    bool public isActive = false;

    constructor(address _staker, address _minter) public {
        staker = _staker;
        minter = _minter;
        feeManager = msg.sender;
    }

    function setFeeManager(address _feeManager) external {
        require(msg.sender == feeManager, "!auth");
        feeManager = _feeManager;
    }

    function setFees(uint _lockIncentive) external {
        require(msg.sender == feeManager, "!auth");

        if (_lockIncentive >= 0 && _lockIncentive <= 30) {
            lockIncentive = _lockIncentive;
        }
    }

    //lock curve if whitelisted
    function _lockCurve() internal {
        address walletChecker = ICurveVoteEscrow(escrow).smart_wallet_checker();

        if (walletChecker != address(0) && IWalletChecker(walletChecker).check(staker) == true) {
            uint crvBalance = IERC20(crv).balanceOf(address(this));
            require(crvBalance > 0, "no crv to lock");
            IERC20(crv).safeTransfer(staker, crvBalance);

            uint unlockAt = block.timestamp + MAXTIME;
            uint unlockInWeeks = (unlockAt / WEEK) * WEEK;

            //check if vecrv has expired
            uint vecrv = IERC20(escrow).balanceOf(staker);
            if (vecrv == 0) {
                //release old lock if exists
                IStaker(staker).release();
                //create new lock
                uint crvBalanceStaker = IERC20(crv).balanceOf(staker);
                IStaker(staker).createLock(crvBalanceStaker, unlockAt);
                unlockTime = unlockInWeeks;
            } else {
                //increase ammount
                uint crvBalanceStaker = IERC20(crv).balanceOf(staker);
                IStaker(staker).increaseAmount(crvBalanceStaker);

                //increase time too if over 2 week buffer
                if (unlockInWeeks.sub(unlockTime) > 2) {
                    IStaker(staker).increaseTime(unlockAt);
                    unlockTime = unlockInWeeks;
                }
            }
            ITokenMinter(minter).mint(msg.sender, incentiveCrv);
            incentiveCrv = 0;
            if (!isActive) {
                isActive = true;
            }
        }
    }

    function lockCurve() external {
        _lockCurve();
    }

    //@summary: deposit crv for cCrv
    //can locking immediately or defer locking to someone else by paying a fee.
    //while users can choose to lock or defer, this is mostly in place so that
    //the cvx reward contract isnt costly to claim rewards
    function deposit(uint _amount, bool _lock) external {
        require(_amount > 0, "!>0");
        IERC20(crv).safeTransferFrom(msg.sender, address(this), _amount);

        // @note if lock hasnt started, dont allow defered locks
        if (!isActive) {
            _lock = true;
        }

        if (_lock) {
            //lock immediately
            _lockCurve();
        } else {
            //defer lock cost to another user
            uint callIncentive = _amount.mul(lockIncentive).div(FEE_DENOMINATOR);
            _amount = _amount.sub(callIncentive);

            //add to a pool for lock caller
            incentiveCrv = incentiveCrv.add(callIncentive);
        }
        // @dev shares do not gain interest so mint 1:1 for crv
        ITokenMinter(minter).mint(msg.sender, _amount);
    }

    // @param allow retrival of crv before whitelisting and first lock
    function burn(uint _amount) external {
        require(!isActive, "locked");

        uint crvBalance = IERC20(crv).balanceOf(address(this));
        if (_amount <= crvBalance) {
            ITokenMinter(minter).burn(msg.sender, _amount);
            IERC20(crv).safeTransfer(msg.sender, _amount);
        }
    }
}
