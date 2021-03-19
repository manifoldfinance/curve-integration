pragma solidity ^0.5.17;

/**
 * @dev Interface for Curve.Fi deposit contract for Y-pool.
 * @dev See original implementation in official repository:
 * https://github.com/curvefi/curve-contract/blob/master/contracts/pools/y/DepositY.vy
 */
contract ICurveFi_DepositY {
    function add_liquidity(uint[4] calldata uamounts, uint min_mint_amount) external;

    function remove_liquidity(uint _amount, uint[4] calldata min_uamounts) external;

    function remove_liquidity_imbalance(uint[4] calldata uamounts, uint max_burn_amount) external;

    function coins(int128 i) external view returns (address);

    function underlying_coins(int128 i) external view returns (address);

    function underlying_coins() external view returns (address[4] memory);

    function curve() external view returns (address);

    function token() external view returns (address);
}
