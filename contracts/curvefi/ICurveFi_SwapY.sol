pragma solidity ^0.5.17;

/**
 * @dev Interface for Curve.Fi swap contract for Y-pool.
 * @dev See original implementation in official repository:
 * https://github.com/curvefi/curve-contract/blob/master/contracts/pools/y/StableSwapY.vy
 */
interface ICurveFi_SwapY {
    function add_liquidity(uint[4] calldata amounts, uint min_mint_amount) external;

    function remove_liquidity(uint _amount, uint[4] calldata min_amounts) external;

    function remove_liquidity_imbalance(uint[4] calldata amounts, uint max_burn_amount) external;

    function calc_token_amount(uint[4] calldata amounts, bool deposit) external view returns (uint);

    function balances(int128 i) external view returns (uint);

    function coins(int128 i) external view returns (address);
}
