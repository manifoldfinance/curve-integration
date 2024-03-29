pragma solidity ^0.5.17;

import "@openzeppelin/upgrades/contracts/Initializable.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/GSN/Context.sol";

import "@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Mintable.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Burnable.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/math/SafeMath.sol";

import "../curvefi/IYERC20.sol";
import "../curvefi/ICurveFi_SwapY.sol";

/**
 * @dev Test stub for the implementation of Curve.Fi swap contract for Y-pool.
 * @dev Original code is located in official repository:
 * https://github.com/curvefi/curve-contract/blob/master/contracts/pools/y/StableSwapY.vy
 */
contract Stub_CurveFi_SwapY is ICurveFi_SwapY, Initializable, Context {
    using SafeMath for uint;

    uint public constant N_COINS = 4;
    uint constant MAX_EXCHANGE_FEE = 0.05 * 1e18;

    address public __token;
    uint[N_COINS] public __balances;
    address[N_COINS] public __coins;
    address[N_COINS] public __underlying_coins;
    uint public __fee;

    function initialize(
        address[N_COINS] memory _coins,
        address[N_COINS] memory _underlying_coins,
        address _pool_token,
        uint _fee
    ) public initializer {
        for (uint i = 0; i < N_COINS; i++) {
            __coins[i] = _coins[i];
            __underlying_coins[i] = _underlying_coins[i];
        }
        __token = _pool_token;
        __fee = _fee;
    }

    function add_liquidity(uint[N_COINS] memory amounts, uint min_mint_amount) public {
        uint mint_amount = calculateMintAmount(amounts);

        require(mint_amount >= min_mint_amount, "Min mint amount failed");

        // Take coins from the sender
        for (uint i = 0; i < N_COINS; i++) {
            IYERC20(__coins[i]).transferFrom(msg.sender, address(this), amounts[i]);
        }

        ERC20Mintable(__token).mint(_msgSender(), mint_amount);
    }

    function remove_liquidity(uint _amount, uint[N_COINS] memory min_amounts) public {
        uint total_supply = IERC20(__token).totalSupply();
        uint[] memory amounts = new uint[](__coins.length);

        for (uint i = 0; i < __coins.length; i++) {
            uint value = balances(int128(i));
            amounts[i] = _amount.mul(value).div(total_supply);
            require(amounts[i] >= min_amounts[i], "Min withdraw amount failed");
            IYERC20(__coins[i]).transfer(_msgSender(), amounts[i]);
        }
        ERC20Burnable(__token).burnFrom(_msgSender(), _amount);
    }

    function remove_liquidity_imbalance(uint[N_COINS] memory amounts, uint max_burn_amount) public {
        uint total_supply = IERC20(__token).totalSupply();
        require(total_supply > 0, "Nothing to withdraw");

        uint token_amount = change_token_amount_with_fees(amounts, false);

        for (uint i = 0; i < N_COINS; i++) {
            IYERC20(__coins[i]).transfer(_msgSender(), amounts[i]);
        }

        require(max_burn_amount == 0 || token_amount <= max_burn_amount, "Min burn amount failed");
        ERC20Burnable(__token).burnFrom(_msgSender(), token_amount);
    }

    function calculateMintAmount(uint[N_COINS] memory amounts) internal returns (uint) {
        uint mint_amount;
        if (IERC20(__token).totalSupply() > 0) {
            mint_amount = change_token_amount_with_fees(amounts, true);
        } else {
            uint total;
            for (uint i = 0; i < N_COINS; i++) {
                __balances[i] += amounts[i];
                total += normalize(__coins[i], amounts[i]);
            }
            //            D1: uint256 = self.get_D_mem(rates, balances)
            //           mint_amount = D1;
            mint_amount = total;
        }
        return mint_amount;
    }

    function calc_token_amount(uint[N_COINS] memory amounts, bool deposit) public view returns (uint) {
        //       uint256[N_COINS] rates = _stored_rates();
        //       D0: uint256 = self.get_D_mem(rates, _balances)
        uint[4] memory _balances;
        uint total;
        for (uint i = 0; i < N_COINS; i++) {
            _balances[i] = __balances[i];
            if (deposit) _balances[i] += amounts[i];
            else _balances[i] -= amounts[i];
            total += normalize(__coins[i], amounts[i]);
        }
        //        D1: uint256 = self.get_D_mem(rates, _balances)

        //       uint256 token_amount = IERC20(token).totalSupply();
        //        uint256 diff;
        //        if (deposit)
        //            diff = D1 - D0;
        //        else
        //            diff = D0 - D1;
        return total; //return diff * token_amount / D0
    }

    function change_token_amount_with_fees(uint[N_COINS] memory amounts, bool deposit) internal returns (uint) {
        uint i;
        uint[N_COINS] memory new_balances;
        uint[N_COINS] memory old_balances;

        for (i = 0; i < N_COINS; i++) {
            old_balances[i] = __balances[i];
        }

        //Step 1
        //D0: uint256 = self.get_D_mem(rates, _balances)

        uint total;
        for (i = 0; i < N_COINS; i++) {
            if (deposit) new_balances[i] = old_balances[i].add(amounts[i]);
            else new_balances[i] = old_balances[i].sub(amounts[i]);
            total += normalize(__coins[i], amounts[i]);
        }

        //Step 2
        //D1: uint256 = self.get_D_mem(rates, new_balances)

        uint _fee = (__fee * N_COINS) / (4 * (N_COINS - 1));
        for (i = 0; i < N_COINS; i++) {
            uint ideal_balance = old_balances[i].mul(9900).div(10000); //D1 * old_balances[i] / D0;
            uint difference;
            if (ideal_balance > new_balances[i]) difference = ideal_balance - new_balances[i];
            else difference = new_balances[i] - ideal_balance;
            uint fee = (_fee * difference) / (10**10);

            new_balances[i] = new_balances[i].sub(fee);
        }

        //Step 3
        // D2: uint256 = self.get_D_mem(rates, new_balances)

        for (i = 0; i < N_COINS; i++) {
            __balances[i] = new_balances[i];
        }

        //        uint256 token_amount = IERC20(token).totalSupply();
        //        uint256 diff;
        //        if (deposit)
        //            diff = D2 - D0;
        //        else
        //            diff = D0 - D2;
        return total; //token_amount.mul(9800).div(10000);//diff * token_amount / D0;
    }

    /**
     * @notice Util to normalize balance up to 18 decimals
     */
    function normalize(address coin, uint amount) internal view returns (uint) {
        uint8 decimals = ERC20Detailed(coin).decimals();
        if (decimals == 18) {
            return amount;
        } else if (decimals > 18) {
            return amount.div(uint(10)**(decimals - 18));
        } else if (decimals < 18) {
            return amount.mul(uint(10)**(18 - decimals));
        }
    }

    function balances(int128 i) public view returns (uint) {
        return __balances[uint(i)]; //IERC20(__coins[uint256(i)]).balanceOf(address(this));
    }

    function A() public view returns (uint) {
        this;
        return 0;
    }

    function fee() public view returns (uint) {
        return __fee;
    }

    function coins(int128 i) public view returns (address) {
        return __coins[uint(i)];
    }
}
