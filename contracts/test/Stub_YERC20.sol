pragma solidity ^0.5.17;

import "@openzeppelin/upgrades/contracts/Initializable.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/GSN/Context.sol";

import "@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Mintable.sol";

import "../curvefi/IYERC20.sol";

/**
 * @dev Simplified stub to imitate wrapped Y-token from yearn.finance
 */
contract Stub_YERC20 is IYERC20, Initializable, Context, ERC20, ERC20Detailed {
    uint constant EXP_SCALE = 1e18;
    uint constant INITIAL_RATE = 1 * EXP_SCALE;
    uint prev_time;

    ERC20Mintable public underlying;
    uint created;

    function initialize(
        address _underlying,
        string memory symb,
        uint8 uDecimals
    ) public initializer {
        ERC20Detailed.initialize("YToken", symb, uDecimals);
        underlying = ERC20Mintable(_underlying);
        prev_time = now;
    }

    //yToken functions
    function token() public returns (address) {
        return address(underlying);
    }

    function deposit(uint amount) public {
        underlying.transferFrom(_msgSender(), address(this), amount);
        uint shares = amount.mul(EXP_SCALE).div(_exchangeRate());
        _mint(_msgSender(), shares);

        prev_time = now;
    }

    function withdraw(uint shares) public {
        uint redeemAmount = shares.mul(_exchangeRate()).div(EXP_SCALE);
        _burn(_msgSender(), shares);
        _sendUnderlying(_msgSender(), redeemAmount);

        prev_time = now;
    }

    function getPricePerFullShare() public view returns (uint) {
        return _exchangeRate();
    }

    function _sendUnderlying(address recipient, uint amount) internal {
        uint underlyingBalance = underlying.balanceOf(address(this));
        if (amount > underlyingBalance) {
            underlying.mint(address(this), amount - underlyingBalance);
        }
        underlying.transfer(recipient, amount);
    }

    // Simplified calculation to imitate price changes
    function _exchangeRate() internal view returns (uint) {
        uint sec = now.sub(prev_time) + 10;
        return INITIAL_RATE.add(INITIAL_RATE.mul(sec).div(365 days).div(EXP_SCALE));
    }
}
