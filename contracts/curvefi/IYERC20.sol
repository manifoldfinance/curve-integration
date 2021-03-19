pragma solidity ^0.5.17;

contract IYERC20 {
    //ERC20 functions
    function totalSupply() external view returns (uint);

    function balanceOf(address account) external view returns (uint);

    function transfer(address recipient, uint amount) external returns (bool);

    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint amount) external returns (bool);

    function transferFrom(
        address sender,
        address recipient,
        uint amount
    ) external returns (bool);

    function name() external view returns (string memory);

    function symbol() external view returns (string memory);

    function decimals() external view returns (uint8);

    //Y-token functions
    function deposit(uint amount) external;

    function withdraw(uint shares) external;

    function getPricePerFullShare() external view returns (uint);

    function token() external returns (address);
}
