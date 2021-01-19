# Curve Finance Integration Kit

> Notice: this falls under Curve Finances existing license

## Documentation

- [Documentation](#documentation)
- [library `Address`](#library--address-)
- [contract `Context`](#contract--context-)
- [contract `ERC20`](#contract--erc20-)
  - [Events](#events)
    - [`Approval`](#-approval-)
    - [`Transfer`](#-transfer-)
  - [Methods](#methods)
    - [`allowance`](#-allowance-)
    - [`approve`](#-approve-)
    - [`balanceOf`](#-balanceof-)
    - [`decreaseAllowance`](#-decreaseallowance-)
    - [`increaseAllowance`](#-increaseallowance-)
    - [`totalSupply`](#-totalsupply-)
    - [`transfer`](#-transfer-)
    - [`transferFrom`](#-transferfrom-)
- [contract `ERC20Burnable`](#contract--erc20burnable-)
  - [Events](#events-1)
    - [`Approval`](#-approval--1)
    - [`Transfer`](#-transfer--1)
  - [Methods](#methods-1)
    - [`allowance`](#-allowance--1)
    - [`approve`](#-approve--1)
    - [`balanceOf`](#-balanceof--1)
    - [`burn`](#-burn-)
    - [`burnFrom`](#-burnfrom-)
    - [`decreaseAllowance`](#-decreaseallowance--1)
    - [`increaseAllowance`](#-increaseallowance--1)
    - [`totalSupply`](#-totalsupply--1)
    - [`transfer`](#-transfer--1)
    - [`transferFrom`](#-transferfrom--1)
- [contract `ERC20Detailed`](#contract--erc20detailed-)
  - [Events](#events-2)
    - [`Approval`](#-approval--2)
    - [`Transfer`](#-transfer--2)
  - [Methods](#methods-2)
    - [`allowance`](#-allowance--2)
    - [`approve`](#-approve--2)
    - [`balanceOf`](#-balanceof--2)
    - [`decimals`](#-decimals-)
    - [`initialize`](#-initialize-)
    - [`name`](#-name-)
    - [`symbol`](#-symbol-)
    - [`totalSupply`](#-totalsupply--2)
    - [`transfer`](#-transfer--2)
    - [`transferFrom`](#-transferfrom--2)
- [contract `ERC20Mintable`](#contract--erc20mintable-)
  - [Events](#events-3)
    - [`Approval`](#-approval--3)
    - [`MinterAdded`](#-minteradded-)
    - [`MinterRemoved`](#-minterremoved-)
    - [`Transfer`](#-transfer--3)
  - [Methods](#methods-3)
    - [`addMinter`](#-addminter-)
    - [`allowance`](#-allowance--3)
    - [`approve`](#-approve--3)
    - [`balanceOf`](#-balanceof--3)
    - [`decreaseAllowance`](#-decreaseallowance--2)
    - [`increaseAllowance`](#-increaseallowance--2)
    - [`initialize`](#-initialize--1)
    - [`isMinter`](#-isminter-)
    - [`mint`](#-mint-)
    - [`renounceMinter`](#-renounceminter-)
    - [`totalSupply`](#-totalsupply--3)
    - [`transfer`](#-transfer--3)
    - [`transferFrom`](#-transferfrom--3)
- [contract `ICurveFi_DepositY`](#contract--icurvefi-deposity-)
  - [Methods](#methods-4)
    - [`add_liquidity`](#-add-liquidity-)
    - [`coins`](#-coins-)
    - [`curve`](#-curve-)
    - [`remove_liquidity`](#-remove-liquidity-)
    - [`remove_liquidity_imbalance`](#-remove-liquidity-imbalance-)
    - [`token`](#-token-)
    - [`underlying_coins`](#-underlying-coins-)
    - [`underlying_coins`](#-underlying-coins--1)
- [interface `ICurveFi_Gauge`](#interface--icurvefi-gauge-)
  - [Methods](#methods-5)
    - [`balanceOf`](#-balanceof--4)
    - [`claimable_tokens`](#-claimable-tokens-)
    - [`crv_token`](#-crv-token-)
    - [`deposit`](#-deposit-)
    - [`integrate_fraction`](#-integrate-fraction-)
    - [`lp_token`](#-lp-token-)
    - [`minter`](#-minter-)
    - [`user_checkpoint`](#-user-checkpoint-)
    - [`withdraw`](#-withdraw-)
- [interface `ICurveFi_Minter`](#interface--icurvefi-minter-)
  - [Methods](#methods-6)
    - [`mint`](#-mint--1)
    - [`mint_for`](#-mint-for-)
    - [`minted`](#-minted-)
    - [`toggle_approve_mint`](#-toggle-approve-mint-)
    - [`token`](#-token--1)
- [interface `ICurveFi_SwapY`](#interface--icurvefi-swapy-)
  - [Methods](#methods-7)
    - [`add_liquidity`](#-add-liquidity--1)
    - [`balances`](#-balances-)
    - [`calc_token_amount`](#-calc-token-amount-)
    - [`coins`](#-coins--1)
    - [`remove_liquidity`](#-remove-liquidity--1)
    - [`remove_liquidity_imbalance`](#-remove-liquidity-imbalance--1)
- [interface `IERC20`](#interface--ierc20-)
  - [Events](#events-4)
    - [`Approval`](#-approval--4)
    - [`Transfer`](#-transfer--4)
  - [Methods](#methods-8)
    - [`allowance`](#-allowance--4)
    - [`approve`](#-approve--4)
    - [`balanceOf`](#-balanceof--5)
    - [`totalSupply`](#-totalsupply--4)
    - [`transfer`](#-transfer--4)
    - [`transferFrom`](#-transferfrom--4)
- [contract `IYERC20`](#contract--iyerc20-)
  - [Methods](#methods-9)
    - [`allowance`](#-allowance--5)
    - [`approve`](#-approve--5)
    - [`balanceOf`](#-balanceof--6)
    - [`decimals`](#-decimals--1)
    - [`deposit`](#-deposit--1)
    - [`getPricePerFullShare`](#-getpriceperfullshare-)
    - [`name`](#-name--1)
    - [`symbol`](#-symbol--1)
    - [`token`](#-token--2)
    - [`totalSupply`](#-totalsupply--5)
    - [`transfer`](#-transfer--5)
    - [`transferFrom`](#-transferfrom--5)
    - [`withdraw`](#-withdraw--1)
- [contract `Initializable`](#contract--initializable-)
- [contract `MinterRole`](#contract--minterrole-)
  - [Events](#events-5)
    - [`MinterAdded`](#-minteradded--1)
    - [`MinterRemoved`](#-minterremoved--1)
  - [Methods](#methods-10)
    - [`addMinter`](#-addminter--1)
    - [`initialize`](#-initialize--2)
    - [`isMinter`](#-isminter--1)
    - [`renounceMinter`](#-renounceminter--1)
- [library `Roles`](#library--roles-)
- [library `SafeERC20`](#library--safeerc20-)
- [library `SafeMath`](#library--safemath-)
- [contract `Stub_CurveFi_DepositY`](#contract--stub-curvefi-deposity-)
  - [Methods](#methods-11)
    - [`__curve`](#---curve-)
    - [`__token`](#---token-)
    - [`add_liquidity`](#-add-liquidity--2)
    - [`coins`](#-coins--2)
    - [`curve`](#-curve--1)
    - [`initialize`](#-initialize--3)
    - [`N_COINS`](#-n-coins-)
    - [`remove_liquidity`](#-remove-liquidity--2)
    - [`remove_liquidity_imbalance`](#-remove-liquidity-imbalance--2)
    - [`token`](#-token--3)
    - [`underlying_coins`](#-underlying-coins--2)
    - [`underlying_coins`](#-underlying-coins--3)
- [contract `Stub_CurveFi_Gauge`](#contract--stub-curvefi-gauge-)
  - [Methods](#methods-12)
    - [`__crv_token`](#---crv-token-)
    - [`__integrate_fraction`](#---integrate-fraction-)
    - [`__lp_token`](#---lp-token-)
    - [`__minter`](#---minter-)
    - [`_update_liquidity_limit`](#--update-liquidity-limit-)
    - [`balanceOf`](#-balanceof--7)
    - [`claimable_tokens`](#-claimable-tokens--1)
    - [`crv_token`](#-crv-token--1)
    - [`deposit`](#-deposit--2)
    - [`INITIAL_RATE`](#-initial-rate-)
    - [`initialize`](#-initialize--4)
    - [`integrate_checkpoint_of`](#-integrate-checkpoint-of-)
    - [`integrate_fraction`](#-integrate-fraction--1)
    - [`integrate_inv_supply`](#-integrate-inv-supply-)
    - [`integrate_inv_supply_of`](#-integrate-inv-supply-of-)
    - [`lp_token`](#-lp-token--1)
    - [`minter`](#-minter--1)
    - [`TOKENLESS_PRODUCTION`](#-tokenless-production-)
    - [`totalSupply`](#-totalsupply--6)
    - [`user_checkpoint`](#-user-checkpoint--1)
    - [`withdraw`](#-withdraw--2)
    - [`working_balances`](#-working-balances-)
    - [`working_supply`](#-working-supply-)
    - [`YEAR`](#-year-)
- [contract `Stub_CurveFi_LPTokenY`](#contract--stub-curvefi-lptokeny-)
  - [Events](#events-6)
    - [`Approval`](#-approval--5)
    - [`MinterAdded`](#-minteradded--2)
    - [`MinterRemoved`](#-minterremoved--2)
    - [`Transfer`](#-transfer--5)
  - [Methods](#methods-13)
    - [`addMinter`](#-addminter--2)
    - [`allowance`](#-allowance--6)
    - [`approve`](#-approve--6)
    - [`balanceOf`](#-balanceof--8)
    - [`burn`](#-burn--1)
    - [`burnFrom`](#-burnfrom--1)
    - [`decimals`](#-decimals--2)
    - [`decreaseAllowance`](#-decreaseallowance--3)
    - [`increaseAllowance`](#-increaseallowance--3)
    - [`initialize`](#-initialize--5)
    - [`initialize`](#-initialize--6)
    - [`initialize`](#-initialize--7)
    - [`isMinter`](#-isminter--2)
    - [`mint`](#-mint--2)
    - [`name`](#-name--2)
    - [`renounceMinter`](#-renounceminter--2)
    - [`symbol`](#-symbol--2)
    - [`totalSupply`](#-totalsupply--7)
    - [`transfer`](#-transfer--6)
    - [`transferFrom`](#-transferfrom--6)
- [contract `Stub_CurveFi_Minter`](#contract--stub-curvefi-minter-)
  - [Methods](#methods-14)
    - [`__minted`](#---minted-)
    - [`__token`](#---token--1)
    - [`allowed_to_mint_for`](#-allowed-to-mint-for-)
    - [`initialize`](#-initialize--8)
    - [`mint`](#-mint--3)
    - [`mint_for`](#-mint-for--1)
    - [`minted`](#-minted--1)
    - [`toggle_approve_mint`](#-toggle-approve-mint--1)
    - [`token`](#-token--4)
- [contract `Stub_CurveFi_SwapY`](#contract--stub-curvefi-swapy-)
  - [Methods](#methods-15)
    - [`__balances`](#---balances-)
    - [`__coins`](#---coins-)
    - [`__fee`](#---fee-)
    - [`__token`](#---token--2)
    - [`__underlying_coins`](#---underlying-coins-)
    - [`A`](#-a-)
    - [`add_liquidity`](#-add-liquidity--3)
    - [`balances`](#-balances--1)
    - [`calc_token_amount`](#-calc-token-amount--1)
    - [`coins`](#-coins--3)
    - [`fee`](#-fee-)
    - [`initialize`](#-initialize--9)
    - [`N_COINS`](#-n-coins--1)
    - [`remove_liquidity`](#-remove-liquidity--3)
    - [`remove_liquidity_imbalance`](#-remove-liquidity-imbalance--3)
- [contract `Stub_ERC20`](#contract--stub-erc20-)
  - [Events](#events-7)
    - [`Approval`](#-approval--6)
    - [`MinterAdded`](#-minteradded--3)
    - [`MinterRemoved`](#-minterremoved--3)
    - [`Transfer`](#-transfer--6)
  - [Methods](#methods-16)
    - [`addMinter`](#-addminter--3)
    - [`allowance`](#-allowance--7)
    - [`approve`](#-approve--7)
    - [`balanceOf`](#-balanceof--9)
    - [`decimals`](#-decimals--3)
    - [`decreaseAllowance`](#-decreaseallowance--4)
    - [`increaseAllowance`](#-increaseallowance--4)
    - [`initialize`](#-initialize--10)
    - [`initialize`](#-initialize--11)
    - [`initialize`](#-initialize--12)
    - [`isMinter`](#-isminter--3)
    - [`mint`](#-mint--4)
    - [`name`](#-name--3)
    - [`renounceMinter`](#-renounceminter--3)
    - [`symbol`](#-symbol--3)
    - [`totalSupply`](#-totalsupply--8)
    - [`transfer`](#-transfer--7)
    - [`transferFrom`](#-transferfrom--7)
- [contract `Stub_YERC20`](#contract--stub-yerc20-)
  - [Events](#events-8)
    - [`Approval`](#-approval--7)
    - [`Transfer`](#-transfer--7)
  - [Methods](#methods-17)
    - [`allowance`](#-allowance--8)
    - [`approve`](#-approve--8)
    - [`balanceOf`](#-balanceof--10)
    - [`decimals`](#-decimals--4)
    - [`decreaseAllowance`](#-decreaseallowance--5)
    - [`deposit`](#-deposit--3)
    - [`getPricePerFullShare`](#-getpriceperfullshare--1)
    - [`increaseAllowance`](#-increaseallowance--5)
    - [`initialize`](#-initialize--13)
    - [`initialize`](#-initialize--14)
    - [`name`](#-name--4)
    - [`symbol`](#-symbol--4)
    - [`token`](#-token--5)
    - [`totalSupply`](#-totalsupply--9)
    - [`transfer`](#-transfer--8)
    - [`transferFrom`](#-transferfrom--8)
    - [`underlying`](#-underlying-)
    - [`withdraw`](#-withdraw--3)


## contract `ICurveFi_DepositY`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_DepositY.sol:8](contracts/curvefi/ICurveFi_DepositY.sol##L8)_

#### Methods

###### `add_liquidity`

• `function add_liquidity(uint256[4] uamounts, uint256 min_mint_amount)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_DepositY.sol:9](contracts/curvefi/ICurveFi_DepositY.sol##L9)_

**_Parameters_**

| Name                                                             | Type         |
| ---------------------------------------------------------------- | ------------ | --- |
| [`uamounts`](contracts/curvefi/ICurveFi_DepositY.sol##L9)        | `uint256[4]` |     |
| [`min_mint_amount`](contracts/curvefi/ICurveFi_DepositY.sol##L9) | `uint256`    |     |

---

###### `coins`

• `constant function coins(int128 i): (address)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_DepositY.sol:15](contracts/curvefi/ICurveFi_DepositY.sol##L15)_

**_Parameters_**

| Name                                                | Type     |
| --------------------------------------------------- | -------- | --- |
| [`i`](contracts/curvefi/ICurveFi_DepositY.sol##L15) | `int128` |     |

**_Returns_**

| Name                                                | Type      |
| --------------------------------------------------- | --------- | --- |
| [`0`](contracts/curvefi/ICurveFi_DepositY.sol##L15) | `address` |     |

---

###### `curve`

• `constant function curve(): (address)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_DepositY.sol:21](contracts/curvefi/ICurveFi_DepositY.sol##L21)_

**_Returns_**

| Name                                                | Type      |
| --------------------------------------------------- | --------- | --- |
| [`0`](contracts/curvefi/ICurveFi_DepositY.sol##L21) | `address` |     |

---

###### `remove_liquidity`

• `function remove_liquidity(uint256 _amount, uint256[4] min_uamounts)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_DepositY.sol:11](contracts/curvefi/ICurveFi_DepositY.sol##L11)_

**_Parameters_**

| Name                                                           | Type         |
| -------------------------------------------------------------- | ------------ | --- |
| [`_amount`](contracts/curvefi/ICurveFi_DepositY.sol##L11)      | `uint256`    |     |
| [`min_uamounts`](contracts/curvefi/ICurveFi_DepositY.sol##L11) | `uint256[4]` |     |

---

###### `remove_liquidity_imbalance`

• `function remove_liquidity_imbalance(uint256[4] uamounts, uint256 max_burn_amount)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_DepositY.sol:13](contracts/curvefi/ICurveFi_DepositY.sol##L13)_

**_Parameters_**

| Name                                                              | Type         |
| ----------------------------------------------------------------- | ------------ | --- |
| [`uamounts`](contracts/curvefi/ICurveFi_DepositY.sol##L13)        | `uint256[4]` |     |
| [`max_burn_amount`](contracts/curvefi/ICurveFi_DepositY.sol##L13) | `uint256`    |     |

---

###### `token`

• `constant function token(): (address)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_DepositY.sol:23](contracts/curvefi/ICurveFi_DepositY.sol##L23)_

**_Returns_**

| Name                                                | Type      |
| --------------------------------------------------- | --------- | --- |
| [`0`](contracts/curvefi/ICurveFi_DepositY.sol##L23) | `address` |     |

---

###### `underlying_coins`

• `constant function underlying_coins(int128 i): (address)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_DepositY.sol:17](contracts/curvefi/ICurveFi_DepositY.sol##L17)_

**_Parameters_**

| Name                                                | Type     |
| --------------------------------------------------- | -------- | --- |
| [`i`](contracts/curvefi/ICurveFi_DepositY.sol##L17) | `int128` |     |

**_Returns_**

| Name                                                | Type      |
| --------------------------------------------------- | --------- | --- |
| [`0`](contracts/curvefi/ICurveFi_DepositY.sol##L17) | `address` |     |

---

###### `underlying_coins`

• `constant function underlying_coins(): (address[4])`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_DepositY.sol:19](contracts/curvefi/ICurveFi_DepositY.sol##L19)_

**_Returns_**

| Name                                                | Type         |
| --------------------------------------------------- | ------------ | --- |
| [`0`](contracts/curvefi/ICurveFi_DepositY.sol##L19) | `address[4]` |     |

## interface `ICurveFi_Gauge`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_Gauge.sol:8](contracts/curvefi/ICurveFi_Gauge.sol##L8)_

#### Methods

###### `balanceOf`

• `constant function balanceOf(address addr): (uint256)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_Gauge.sol:13](contracts/curvefi/ICurveFi_Gauge.sol##L13)_

**_Parameters_**

| Name                                                | Type      |
| --------------------------------------------------- | --------- | --- |
| [`addr`](contracts/curvefi/ICurveFi_Gauge.sol##L13) | `address` |     |

**_Returns_**

| Name                                             | Type      |
| ------------------------------------------------ | --------- | --- |
| [`0`](contracts/curvefi/ICurveFi_Gauge.sol##L13) | `uint256` |     |

---

###### `claimable_tokens`

• `function claimable_tokens(address addr): (uint256)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_Gauge.sol:19](contracts/curvefi/ICurveFi_Gauge.sol##L19)_

**_Parameters_**

| Name                                                | Type      |
| --------------------------------------------------- | --------- | --- |
| [`addr`](contracts/curvefi/ICurveFi_Gauge.sol##L19) | `address` |     |

**_Returns_**

| Name                                             | Type      |
| ------------------------------------------------ | --------- | --- |
| [`0`](contracts/curvefi/ICurveFi_Gauge.sol##L19) | `uint256` |     |

---

###### `crv_token`

• `constant function crv_token(): (address)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_Gauge.sol:11](contracts/curvefi/ICurveFi_Gauge.sol##L11)_

**_Returns_**

| Name                                             | Type      |
| ------------------------------------------------ | --------- | --- |
| [`0`](contracts/curvefi/ICurveFi_Gauge.sol##L11) | `address` |     |

---

###### `deposit`

• `function deposit(uint256 _value)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_Gauge.sol:15](contracts/curvefi/ICurveFi_Gauge.sol##L15)_

**_Parameters_**

| Name                                                  | Type      |
| ----------------------------------------------------- | --------- | --- |
| [`_value`](contracts/curvefi/ICurveFi_Gauge.sol##L15) | `uint256` |     |

---

###### `integrate_fraction`

• `constant function integrate_fraction(address _for): (uint256)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_Gauge.sol:23](contracts/curvefi/ICurveFi_Gauge.sol##L23)_

**_Parameters_**

| Name                                                | Type      |
| --------------------------------------------------- | --------- | --- |
| [`_for`](contracts/curvefi/ICurveFi_Gauge.sol##L23) | `address` |     |

**_Returns_**

| Name                                             | Type      |
| ------------------------------------------------ | --------- | --- |
| [`0`](contracts/curvefi/ICurveFi_Gauge.sol##L23) | `uint256` |     |

---

###### `lp_token`

• `constant function lp_token(): (address)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_Gauge.sol:9](contracts/curvefi/ICurveFi_Gauge.sol##L9)_

**_Returns_**

| Name                                            | Type      |
| ----------------------------------------------- | --------- | --- |
| [`0`](contracts/curvefi/ICurveFi_Gauge.sol##L9) | `address` |     |

---

###### `minter`

• `constant function minter(): (address)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_Gauge.sol:21](contracts/curvefi/ICurveFi_Gauge.sol##L21)_

**_Returns_**

| Name                                             | Type      |
| ------------------------------------------------ | --------- | --- |
| [`0`](contracts/curvefi/ICurveFi_Gauge.sol##L21) | `address` |     |

---

###### `user_checkpoint`

• `function user_checkpoint(address _for): (bool)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_Gauge.sol:25](contracts/curvefi/ICurveFi_Gauge.sol##L25)_

**_Parameters_**

| Name                                                | Type      |
| --------------------------------------------------- | --------- | --- |
| [`_for`](contracts/curvefi/ICurveFi_Gauge.sol##L25) | `address` |     |

**_Returns_**

| Name                                             | Type   |
| ------------------------------------------------ | ------ | --- |
| [`0`](contracts/curvefi/ICurveFi_Gauge.sol##L25) | `bool` |     |

---

###### `withdraw`

• `function withdraw(uint256 _value)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_Gauge.sol:17](contracts/curvefi/ICurveFi_Gauge.sol##L17)_

**_Parameters_**

| Name                                                  | Type      |
| ----------------------------------------------------- | --------- | --- |
| [`_value`](contracts/curvefi/ICurveFi_Gauge.sol##L17) | `uint256` |     |

## interface `ICurveFi_Minter`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_Minter.sol:8](contracts/curvefi/ICurveFi_Minter.sol##L8)_

#### Methods

###### `mint`

• `function mint(address gauge_addr)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_Minter.sol:9](contracts/curvefi/ICurveFi_Minter.sol##L9)_

**_Parameters_**

| Name                                                      | Type      |
| --------------------------------------------------------- | --------- | --- |
| [`gauge_addr`](contracts/curvefi/ICurveFi_Minter.sol##L9) | `address` |     |

---

###### `mint_for`

• `function mint_for(address gauge_addr, address _for)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_Minter.sol:11](contracts/curvefi/ICurveFi_Minter.sol##L11)_

**_Parameters_**

| Name                                                       | Type      |
| ---------------------------------------------------------- | --------- | --- |
| [`gauge_addr`](contracts/curvefi/ICurveFi_Minter.sol##L11) | `address` |     |
| [`_for`](contracts/curvefi/ICurveFi_Minter.sol##L11)       | `address` |     |

---

###### `minted`

• `constant function minted(address _for, address gauge_addr): (uint256)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_Minter.sol:13](contracts/curvefi/ICurveFi_Minter.sol##L13)_

**_Parameters_**

| Name                                                       | Type      |
| ---------------------------------------------------------- | --------- | --- |
| [`_for`](contracts/curvefi/ICurveFi_Minter.sol##L13)       | `address` |     |
| [`gauge_addr`](contracts/curvefi/ICurveFi_Minter.sol##L13) | `address` |     |

**_Returns_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/curvefi/ICurveFi_Minter.sol##L13) | `uint256` |     |

---

###### `toggle_approve_mint`

• `function toggle_approve_mint(address minting_user)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_Minter.sol:15](contracts/curvefi/ICurveFi_Minter.sol##L15)_

**_Parameters_**

| Name                                                         | Type      |
| ------------------------------------------------------------ | --------- | --- |
| [`minting_user`](contracts/curvefi/ICurveFi_Minter.sol##L15) | `address` |     |

---

###### `token`

• `constant function token(): (address)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_Minter.sol:17](contracts/curvefi/ICurveFi_Minter.sol##L17)_

**_Returns_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/curvefi/ICurveFi_Minter.sol##L17) | `address` |     |

## interface `ICurveFi_SwapY`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_SwapY.sol:8](contracts/curvefi/ICurveFi_SwapY.sol##L8)_

#### Methods

###### `add_liquidity`

• `function add_liquidity(uint256[4] amounts, uint256 min_mint_amount)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_SwapY.sol:9](contracts/curvefi/ICurveFi_SwapY.sol##L9)_

**_Parameters_**

| Name                                                          | Type         |
| ------------------------------------------------------------- | ------------ | --- |
| [`amounts`](contracts/curvefi/ICurveFi_SwapY.sol##L9)         | `uint256[4]` |     |
| [`min_mint_amount`](contracts/curvefi/ICurveFi_SwapY.sol##L9) | `uint256`    |     |

---

###### `balances`

• `constant function balances(int128 i): (uint256)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_SwapY.sol:17](contracts/curvefi/ICurveFi_SwapY.sol##L17)_

**_Parameters_**

| Name                                             | Type     |
| ------------------------------------------------ | -------- | --- |
| [`i`](contracts/curvefi/ICurveFi_SwapY.sol##L17) | `int128` |     |

**_Returns_**

| Name                                             | Type      |
| ------------------------------------------------ | --------- | --- |
| [`0`](contracts/curvefi/ICurveFi_SwapY.sol##L17) | `uint256` |     |

---

###### `calc_token_amount`

• `constant function calc_token_amount(uint256[4] amounts, bool deposit): (uint256)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_SwapY.sol:15](contracts/curvefi/ICurveFi_SwapY.sol##L15)_

**_Parameters_**

| Name                                                   | Type         |
| ------------------------------------------------------ | ------------ | --- |
| [`amounts`](contracts/curvefi/ICurveFi_SwapY.sol##L15) | `uint256[4]` |     |
| [`deposit`](contracts/curvefi/ICurveFi_SwapY.sol##L15) | `bool`       |     |

**_Returns_**

| Name                                             | Type      |
| ------------------------------------------------ | --------- | --- |
| [`0`](contracts/curvefi/ICurveFi_SwapY.sol##L15) | `uint256` |     |

---

###### `coins`

• `constant function coins(int128 i): (address)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_SwapY.sol:19](contracts/curvefi/ICurveFi_SwapY.sol##L19)_

**_Parameters_**

| Name                                             | Type     |
| ------------------------------------------------ | -------- | --- |
| [`i`](contracts/curvefi/ICurveFi_SwapY.sol##L19) | `int128` |     |

**_Returns_**

| Name                                             | Type      |
| ------------------------------------------------ | --------- | --- |
| [`0`](contracts/curvefi/ICurveFi_SwapY.sol##L19) | `address` |     |

---

###### `remove_liquidity`

• `function remove_liquidity(uint256 _amount, uint256[4] min_amounts)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_SwapY.sol:11](contracts/curvefi/ICurveFi_SwapY.sol##L11)_

**_Parameters_**

| Name                                                       | Type         |
| ---------------------------------------------------------- | ------------ | --- |
| [`_amount`](contracts/curvefi/ICurveFi_SwapY.sol##L11)     | `uint256`    |     |
| [`min_amounts`](contracts/curvefi/ICurveFi_SwapY.sol##L11) | `uint256[4]` |     |

---

###### `remove_liquidity_imbalance`

• `function remove_liquidity_imbalance(uint256[4] amounts, uint256 max_burn_amount)`

&nbsp; _Defined in [contracts/curvefi/ICurveFi_SwapY.sol:13](contracts/curvefi/ICurveFi_SwapY.sol##L13)_

**_Parameters_**

| Name                                                           | Type         |
| -------------------------------------------------------------- | ------------ | --- |
| [`amounts`](contracts/curvefi/ICurveFi_SwapY.sol##L13)         | `uint256[4]` |     |
| [`max_burn_amount`](contracts/curvefi/ICurveFi_SwapY.sol##L13) | `uint256`    |     |

## interface `IERC20`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol:7](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L7)_

#### Events

###### `Approval`

• `event Approval(address owner, address spender, uint256 value)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol:75](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L75)_

**_Parameters_**

| Name                                                                                                     | Type      | Indexed |
| -------------------------------------------------------------------------------------------------------- | --------- | ------- | --- |
| [`owner`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L75)   | `address` | `true`  |     |
| [`spender`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L75) | `address` | `true`  |     |
| [`value`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L75)   | `uint256` | `false` |     |

---

###### `Transfer`

• `event Transfer(address from, address to, uint256 value)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol:69](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L69)_

**_Parameters_**

| Name                                                                                                   | Type      | Indexed |
| ------------------------------------------------------------------------------------------------------ | --------- | ------- | --- |
| [`from`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L69)  | `address` | `true`  |     |
| [`to`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L69)    | `address` | `true`  |     |
| [`value`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L69) | `uint256` | `false` |     |

#### Methods

###### `allowance`

• `constant function allowance(address owner, address spender): (uint256)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol:34](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L34)_

**_Parameters_**

| Name                                                                                                     | Type      |
| -------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`owner`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L34)   | `address` |     |
| [`spender`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L34) | `address` |     |

**_Returns_**

| Name                                                                                               | Type      |
| -------------------------------------------------------------------------------------------------- | --------- | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L34) | `uint256` |     |

---

###### `approve`

• `function approve(address spender, uint256 amount): (bool)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol:50](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L50)_

**_Parameters_**

| Name                                                                                                     | Type      |
| -------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`spender`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L50) | `address` |     |
| [`amount`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L50)  | `uint256` |     |

**_Returns_**

| Name                                                                                               | Type   |
| -------------------------------------------------------------------------------------------------- | ------ | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L50) | `bool` |     |

---

###### `balanceOf`

• `constant function balanceOf(address account): (uint256)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol:16](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L16)_

**_Parameters_**

| Name                                                                                                     | Type      |
| -------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`account`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L16) | `address` |     |

**_Returns_**

| Name                                                                                               | Type      |
| -------------------------------------------------------------------------------------------------- | --------- | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L16) | `uint256` |     |

---

###### `totalSupply`

• `constant function totalSupply(): (uint256)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol:11](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L11)_

**_Returns_**

| Name                                                                                               | Type      |
| -------------------------------------------------------------------------------------------------- | --------- | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L11) | `uint256` |     |

---

###### `transfer`

• `function transfer(address recipient, uint256 amount): (bool)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol:25](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L25)_

**_Parameters_**

| Name                                                                                                       | Type      |
| ---------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`recipient`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L25) | `address` |     |
| [`amount`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L25)    | `uint256` |     |

**_Returns_**

| Name                                                                                               | Type   |
| -------------------------------------------------------------------------------------------------- | ------ | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L25) | `bool` |     |

---

###### `transferFrom`

• `function transferFrom(address sender, address recipient, uint256 amount): (bool)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol:61](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L61)_

**_Parameters_**

| Name                                                                                                       | Type      |
| ---------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`sender`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L61)    | `address` |     |
| [`recipient`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L61) | `address` |     |

**_Returns_**

| Name                                                                                               | Type   |
| -------------------------------------------------------------------------------------------------- | ------ | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L61) | `bool` |     |

## contract `IYERC20`

&nbsp; _Defined in [contracts/curvefi/IYERC20.sol:3](contracts/curvefi/IYERC20.sol##L3)_

#### Methods

###### `allowance`

• `constant function allowance(address owner, address spender): (uint256)`

&nbsp; _Defined in [contracts/curvefi/IYERC20.sol:11](contracts/curvefi/IYERC20.sol##L11)_

**_Parameters_**

| Name                                            | Type      |
| ----------------------------------------------- | --------- | --- |
| [`owner`](contracts/curvefi/IYERC20.sol##L11)   | `address` |     |
| [`spender`](contracts/curvefi/IYERC20.sol##L11) | `address` |     |

**_Returns_**

| Name                                      | Type      |
| ----------------------------------------- | --------- | --- |
| [`0`](contracts/curvefi/IYERC20.sol##L11) | `uint256` |     |

---

###### `approve`

• `function approve(address spender, uint256 amount): (bool)`

&nbsp; _Defined in [contracts/curvefi/IYERC20.sol:13](contracts/curvefi/IYERC20.sol##L13)_

**_Parameters_**

| Name                                            | Type      |
| ----------------------------------------------- | --------- | --- |
| [`spender`](contracts/curvefi/IYERC20.sol##L13) | `address` |     |
| [`amount`](contracts/curvefi/IYERC20.sol##L13)  | `uint256` |     |

**_Returns_**

| Name                                      | Type   |
| ----------------------------------------- | ------ | --- |
| [`0`](contracts/curvefi/IYERC20.sol##L13) | `bool` |     |

---

###### `balanceOf`

• `constant function balanceOf(address account): (uint256)`

&nbsp; _Defined in [contracts/curvefi/IYERC20.sol:7](contracts/curvefi/IYERC20.sol##L7)_

**_Parameters_**

| Name                                           | Type      |
| ---------------------------------------------- | --------- | --- |
| [`account`](contracts/curvefi/IYERC20.sol##L7) | `address` |     |

**_Returns_**

| Name                                     | Type      |
| ---------------------------------------- | --------- | --- |
| [`0`](contracts/curvefi/IYERC20.sol##L7) | `uint256` |     |

---

###### `decimals`

• `constant function decimals(): (uint8)`

&nbsp; _Defined in [contracts/curvefi/IYERC20.sol:25](contracts/curvefi/IYERC20.sol##L25)_

**_Returns_**

| Name                                      | Type    |
| ----------------------------------------- | ------- | --- |
| [`0`](contracts/curvefi/IYERC20.sol##L25) | `uint8` |     |

---

###### `deposit`

Y-token functions

• `function deposit(uint256 amount)`

&nbsp; _Defined in [contracts/curvefi/IYERC20.sol:28](contracts/curvefi/IYERC20.sol##L28)_

**_Parameters_**

| Name                                           | Type      |
| ---------------------------------------------- | --------- | --- |
| [`amount`](contracts/curvefi/IYERC20.sol##L28) | `uint256` |     |

---

###### `getPricePerFullShare`

• `constant function getPricePerFullShare(): (uint256)`

&nbsp; _Defined in [contracts/curvefi/IYERC20.sol:32](contracts/curvefi/IYERC20.sol##L32)_

**_Returns_**

| Name                                      | Type      |
| ----------------------------------------- | --------- | --- |
| [`0`](contracts/curvefi/IYERC20.sol##L32) | `uint256` |     |

---

###### `name`

• `constant function name(): (string)`

&nbsp; _Defined in [contracts/curvefi/IYERC20.sol:21](contracts/curvefi/IYERC20.sol##L21)_

**_Returns_**

| Name                                      | Type     |
| ----------------------------------------- | -------- | --- |
| [`0`](contracts/curvefi/IYERC20.sol##L21) | `string` |     |

---

###### `symbol`

• `constant function symbol(): (string)`

&nbsp; _Defined in [contracts/curvefi/IYERC20.sol:23](contracts/curvefi/IYERC20.sol##L23)_

**_Returns_**

| Name                                      | Type     |
| ----------------------------------------- | -------- | --- |
| [`0`](contracts/curvefi/IYERC20.sol##L23) | `string` |     |

---

###### `token`

• `function token(): (address)`

&nbsp; _Defined in [contracts/curvefi/IYERC20.sol:34](contracts/curvefi/IYERC20.sol##L34)_

**_Returns_**

| Name                                      | Type      |
| ----------------------------------------- | --------- | --- |
| [`0`](contracts/curvefi/IYERC20.sol##L34) | `address` |     |

---

###### `totalSupply`

ERC20 functions

• `constant function totalSupply(): (uint256)`

&nbsp; _Defined in [contracts/curvefi/IYERC20.sol:5](contracts/curvefi/IYERC20.sol##L5)_

**_Returns_**

| Name                                     | Type      |
| ---------------------------------------- | --------- | --- |
| [`0`](contracts/curvefi/IYERC20.sol##L5) | `uint256` |     |

---

###### `transfer`

• `function transfer(address recipient, uint256 amount): (bool)`

&nbsp; _Defined in [contracts/curvefi/IYERC20.sol:9](contracts/curvefi/IYERC20.sol##L9)_

**_Parameters_**

| Name                                             | Type      |
| ------------------------------------------------ | --------- | --- |
| [`recipient`](contracts/curvefi/IYERC20.sol##L9) | `address` |     |
| [`amount`](contracts/curvefi/IYERC20.sol##L9)    | `uint256` |     |

**_Returns_**

| Name                                     | Type   |
| ---------------------------------------- | ------ | --- |
| [`0`](contracts/curvefi/IYERC20.sol##L9) | `bool` |     |

---

###### `transferFrom`

• `function transferFrom(address sender, address recipient, uint256 amount): (bool)`

&nbsp; _Defined in [contracts/curvefi/IYERC20.sol:15](contracts/curvefi/IYERC20.sol##L15)_

**_Parameters_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`sender`](contracts/curvefi/IYERC20.sol##L16)    | `address` |     |
| [`recipient`](contracts/curvefi/IYERC20.sol##L17) | `address` |     |

**_Returns_**

| Name                                      | Type   |
| ----------------------------------------- | ------ | --- |
| [`0`](contracts/curvefi/IYERC20.sol##L19) | `bool` |     |

---

###### `withdraw`

• `function withdraw(uint256 shares)`

&nbsp; _Defined in [contracts/curvefi/IYERC20.sol:30](contracts/curvefi/IYERC20.sol##L30)_

**_Parameters_**

| Name                                           | Type      |
| ---------------------------------------------- | --------- | --- |
| [`shares`](contracts/curvefi/IYERC20.sol##L30) | `uint256` |     |

## contract `Initializable`

&nbsp; _Defined in [node_modules/@openzeppelin/upgrades/contracts/Initializable.sol:16](node_modules/@openzeppelin/upgrades/contracts/Initializable.sol##L16)_

## contract `MinterRole`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol:8](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L8)_

#### Events

###### `MinterAdded`

• `event MinterAdded(address account)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol:11](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L11)_

**_Parameters_**

| Name                                                                                                          | Type      | Indexed |
| ------------------------------------------------------------------------------------------------------------- | --------- | ------- | --- |
| [`account`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L11) | `address` | `true`  |     |

---

###### `MinterRemoved`

• `event MinterRemoved(address account)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol:12](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L12)_

**_Parameters_**

| Name                                                                                                          | Type      | Indexed |
| ------------------------------------------------------------------------------------------------------------- | --------- | ------- | --- |
| [`account`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L12) | `address` | `true`  |     |

#### Methods

###### `addMinter`

• `function addMinter(address account)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol:31](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L31)_

**_Parameters_**

| Name                                                                                                          | Type      |
| ------------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`account`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L31) | `address` |     |

---

###### `initialize`

• `function initialize(address sender)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol:16](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L16)_

**_Parameters_**

| Name                                                                                                         | Type      |
| ------------------------------------------------------------------------------------------------------------ | --------- | --- |
| [`sender`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L16) | `address` |     |

---

###### `isMinter`

• `constant function isMinter(address account): (bool)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol:27](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L27)_

**_Parameters_**

| Name                                                                                                          | Type      |
| ------------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`account`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L27) | `address` |     |

**_Returns_**

| Name                                                                                                    | Type   |
| ------------------------------------------------------------------------------------------------------- | ------ | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L27) | `bool` |     |

---

###### `renounceMinter`

• `function renounceMinter()`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol:35](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L35)_

## library `Roles`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/Roles.sol:7](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/Roles.sol##L7)_

## library `SafeERC20`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/SafeERC20.sol:16](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/SafeERC20.sol##L16)_

## library `SafeMath`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/math/SafeMath.sol:16](node_modules/@openzeppelin/contracts-ethereum-package/contracts/math/SafeMath.sol##L16)_

## contract `Stub_CurveFi_DepositY`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_DepositY.sol:19](contracts/test/Stub_CurveFi_DepositY.sol##L19)_

#### Methods

###### `__curve`

Curve.Fi Swap address

• `constant function __curve(): (address)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_CurveFi_DepositY.sol:26](contracts/test/Stub_CurveFi_DepositY.sol##L26)_

**_Returns_**

| Name                                                 | Type      |
| ---------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_DepositY.sol##L26) | `address` |     |

---

###### `__token`

Curve.Fi LP token

• `constant function __token(): (address)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_CurveFi_DepositY.sol:28](contracts/test/Stub_CurveFi_DepositY.sol##L28)_

**_Returns_**

| Name                                                 | Type      |
| ---------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_DepositY.sol##L28) | `address` |     |

---

###### `add_liquidity`

• `function add_liquidity(uint256[4] uamounts, uint256 min_mint_amount)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_DepositY.sol:46](contracts/test/Stub_CurveFi_DepositY.sol##L46)_

**_Parameters_**

| Name                                                               | Type         |
| ------------------------------------------------------------------ | ------------ | --- |
| [`uamounts`](contracts/test/Stub_CurveFi_DepositY.sol##L46)        | `uint256[4]` |     |
| [`min_mint_amount`](contracts/test/Stub_CurveFi_DepositY.sol##L46) | `uint256`    |     |

---

###### `coins`

• `constant function coins(int128 i): (address)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_DepositY.sol:100](contracts/test/Stub_CurveFi_DepositY.sol##L100)_

**_Parameters_**

| Name                                                  | Type     |
| ----------------------------------------------------- | -------- | --- |
| [`i`](contracts/test/Stub_CurveFi_DepositY.sol##L100) | `int128` |     |

**_Returns_**

| Name                                                  | Type      |
| ----------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_DepositY.sol##L100) | `address` |     |

---

###### `curve`

• `constant function curve(): (address)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_DepositY.sol:112](contracts/test/Stub_CurveFi_DepositY.sol##L112)_

**_Returns_**

| Name                                                  | Type      |
| ----------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_DepositY.sol##L112) | `address` |     |

---

###### `initialize`

• `function initialize(address[4] _coins, address[4] _underlying_coins, address _curve, address _token)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_DepositY.sol:32](contracts/test/Stub_CurveFi_DepositY.sol##L32)_

**_Parameters_**

| Name                                                                 | Type         |
| -------------------------------------------------------------------- | ------------ | --- |
| [`_coins`](contracts/test/Stub_CurveFi_DepositY.sol##L33)            | `address[4]` |     |
| [`_underlying_coins`](contracts/test/Stub_CurveFi_DepositY.sol##L34) | `address[4]` |     |
| [`_token`](contracts/test/Stub_CurveFi_DepositY.sol##L36)            | `address`    |     |

---

###### `N_COINS`

• `constant function N_COINS(): (uint256)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_CurveFi_DepositY.sol:23](contracts/test/Stub_CurveFi_DepositY.sol##L23)_

**_Returns_**

| Name                                                 | Type      |
| ---------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_DepositY.sol##L23) | `uint256` |     |

---

###### `remove_liquidity`

• `function remove_liquidity(uint256 _amount, uint256[4] min_uamounts)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_DepositY.sol:67](contracts/test/Stub_CurveFi_DepositY.sol##L67)_

**_Parameters_**

| Name                                                            | Type         |
| --------------------------------------------------------------- | ------------ | --- |
| [`_amount`](contracts/test/Stub_CurveFi_DepositY.sol##L67)      | `uint256`    |     |
| [`min_uamounts`](contracts/test/Stub_CurveFi_DepositY.sol##L67) | `uint256[4]` |     |

---

###### `remove_liquidity_imbalance`

• `function remove_liquidity_imbalance(uint256[4] uamounts, uint256 max_burn_amount)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_DepositY.sol:73](contracts/test/Stub_CurveFi_DepositY.sol##L73)_

**_Parameters_**

| Name                                                               | Type         |
| ------------------------------------------------------------------ | ------------ | --- |
| [`uamounts`](contracts/test/Stub_CurveFi_DepositY.sol##L73)        | `uint256[4]` |     |
| [`max_burn_amount`](contracts/test/Stub_CurveFi_DepositY.sol##L73) | `uint256`    |     |

---

###### `token`

• `constant function token(): (address)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_DepositY.sol:116](contracts/test/Stub_CurveFi_DepositY.sol##L116)_

**_Returns_**

| Name                                                  | Type      |
| ----------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_DepositY.sol##L116) | `address` |     |

---

###### `underlying_coins`

• `constant function underlying_coins(): (address[4])`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_DepositY.sol:108](contracts/test/Stub_CurveFi_DepositY.sol##L108)_

**_Returns_**

| Name                                                  | Type         |
| ----------------------------------------------------- | ------------ | --- |
| [`0`](contracts/test/Stub_CurveFi_DepositY.sol##L108) | `address[4]` |     |

---

###### `underlying_coins`

• `constant function underlying_coins(int128 i): (address)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_DepositY.sol:104](contracts/test/Stub_CurveFi_DepositY.sol##L104)_

**_Parameters_**

| Name                                                  | Type     |
| ----------------------------------------------------- | -------- | --- |
| [`i`](contracts/test/Stub_CurveFi_DepositY.sol##L104) | `int128` |     |

**_Returns_**

| Name                                                  | Type      |
| ----------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_DepositY.sol##L104) | `address` |     |

## contract `Stub_CurveFi_Gauge`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Gauge.sol:17](contracts/test/Stub_CurveFi_Gauge.sol##L17)_

#### Methods

###### `__crv_token`

CRV token

• `constant function __crv_token(): (address)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Gauge.sol:30](contracts/test/Stub_CurveFi_Gauge.sol##L30)_

**_Returns_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Gauge.sol##L30) | `address` |     |

---

###### `__integrate_fraction`

Total shares of CRV for the user

• `constant function __integrate_fraction(address): (uint256)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Gauge.sol:39](contracts/test/Stub_CurveFi_Gauge.sol##L39)_

**_Parameters_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Gauge.sol##L39) | `address` |     |

**_Returns_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Gauge.sol##L39) | `uint256` |     |

---

###### `__lp_token`

LP-token from Curve pool

• `constant function __lp_token(): (address)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Gauge.sol:33](contracts/test/Stub_CurveFi_Gauge.sol##L33)_

**_Returns_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Gauge.sol##L33) | `address` |     |

---

###### `__minter`

CRV Minter contract

• `constant function __minter(): (address)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Gauge.sol:27](contracts/test/Stub_CurveFi_Gauge.sol##L27)_

**_Returns_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Gauge.sol##L27) | `address` |     |

---

###### `_update_liquidity_limit`

• `function _update_liquidity_limit(address addr, uint256 l, uint256 L)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Gauge.sol:139](contracts/test/Stub_CurveFi_Gauge.sol##L139)_

**_Parameters_**

| Name                                                  | Type      |
| ----------------------------------------------------- | --------- | --- |
| [`addr`](contracts/test/Stub_CurveFi_Gauge.sol##L140) | `address` |     |
| [`l`](contracts/test/Stub_CurveFi_Gauge.sol##L141)    | `uint256` |     |

---

###### `balanceOf`

• `constant function balanceOf(address): (uint256)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Gauge.sol:36](contracts/test/Stub_CurveFi_Gauge.sol##L36)_

**_Parameters_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Gauge.sol##L36) | `address` |     |

**_Returns_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Gauge.sol##L36) | `uint256` |     |

---

###### `claimable_tokens`

Get CRV available for the user

• `function claimable_tokens(address addr): (uint256)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Gauge.sol:96](contracts/test/Stub_CurveFi_Gauge.sol##L96)_

**_Parameters_**

| Name                                                 | Type      |
| ---------------------------------------------------- | --------- | --- |
| [`addr`](contracts/test/Stub_CurveFi_Gauge.sol##L96) | `address` |     |

**_Returns_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Gauge.sol##L96) | `uint256` |     |

---

###### `crv_token`

• `constant function crv_token(): (address)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Gauge.sol:155](contracts/test/Stub_CurveFi_Gauge.sol##L155)_

**_Returns_**

| Name                                               | Type      |
| -------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Gauge.sol##L155) | `address` |     |

---

###### `deposit`

Deposit Curve LP tokens into the Gauge

• `function deposit(uint256 _value)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Gauge.sol:70](contracts/test/Stub_CurveFi_Gauge.sol##L70)_

**_Parameters_**

| Name                                                   | Type      |
| ------------------------------------------------------ | --------- | --- |
| [`_value`](contracts/test/Stub_CurveFi_Gauge.sol##L70) | `uint256` |     |

---

###### `INITIAL_RATE`

• `constant function INITIAL_RATE(): (uint256)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Gauge.sol:52](contracts/test/Stub_CurveFi_Gauge.sol##L52)_

**_Returns_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Gauge.sol##L52) | `uint256` |     |

---

###### `initialize`

• `function initialize(address lp_addr, address _minter)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Gauge.sol:54](contracts/test/Stub_CurveFi_Gauge.sol##L54)_

**_Parameters_**

| Name                                                    | Type      |
| ------------------------------------------------------- | --------- | --- |
| [`lp_addr`](contracts/test/Stub_CurveFi_Gauge.sol##L54) | `address` |     |
| [`_minter`](contracts/test/Stub_CurveFi_Gauge.sol##L54) | `address` |     |

---

###### `integrate_checkpoint_of`

• `constant function integrate_checkpoint_of(address): (uint256)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Gauge.sol:43](contracts/test/Stub_CurveFi_Gauge.sol##L43)_

**_Parameters_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Gauge.sol##L43) | `address` |     |

**_Returns_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Gauge.sol##L43) | `uint256` |     |

---

###### `integrate_fraction`

• `constant function integrate_fraction(address _for): (uint256)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Gauge.sol:163](contracts/test/Stub_CurveFi_Gauge.sol##L163)_

**_Parameters_**

| Name                                                  | Type      |
| ----------------------------------------------------- | --------- | --- |
| [`_for`](contracts/test/Stub_CurveFi_Gauge.sol##L163) | `address` |     |

**_Returns_**

| Name                                               | Type      |
| -------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Gauge.sol##L163) | `uint256` |     |

---

###### `integrate_inv_supply`

• `constant function integrate_inv_supply(uint256): (uint256)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Gauge.sol:41](contracts/test/Stub_CurveFi_Gauge.sol##L41)_

**_Parameters_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Gauge.sol##L41) | `uint256` |     |

**_Returns_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Gauge.sol##L41) | `uint256` |     |

---

###### `integrate_inv_supply_of`

• `constant function integrate_inv_supply_of(address): (uint256)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Gauge.sol:42](contracts/test/Stub_CurveFi_Gauge.sol##L42)_

**_Parameters_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Gauge.sol##L42) | `address` |     |

**_Returns_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Gauge.sol##L42) | `uint256` |     |

---

###### `lp_token`

• `constant function lp_token(): (address)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Gauge.sol:159](contracts/test/Stub_CurveFi_Gauge.sol##L159)_

**_Returns_**

| Name                                               | Type      |
| -------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Gauge.sol##L159) | `address` |     |

---

###### `minter`

• `constant function minter(): (address)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Gauge.sol:151](contracts/test/Stub_CurveFi_Gauge.sol##L151)_

**_Returns_**

| Name                                               | Type      |
| -------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Gauge.sol##L151) | `address` |     |

---

###### `TOKENLESS_PRODUCTION`

• `constant function TOKENLESS_PRODUCTION(): (uint256)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Gauge.sol:48](contracts/test/Stub_CurveFi_Gauge.sol##L48)_

**_Returns_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Gauge.sol##L48) | `uint256` |     |

---

###### `totalSupply`

• `constant function totalSupply(): (uint256)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Gauge.sol:34](contracts/test/Stub_CurveFi_Gauge.sol##L34)_

**_Returns_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Gauge.sol##L34) | `uint256` |     |

---

###### `user_checkpoint`

• `function user_checkpoint(address addr): (bool)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Gauge.sol:62](contracts/test/Stub_CurveFi_Gauge.sol##L62)_

**_Parameters_**

| Name                                                 | Type      |
| ---------------------------------------------------- | --------- | --- |
| [`addr`](contracts/test/Stub_CurveFi_Gauge.sol##L62) | `address` |     |

**_Returns_**

| Name                                              | Type   |
| ------------------------------------------------- | ------ | --- |
| [`0`](contracts/test/Stub_CurveFi_Gauge.sol##L62) | `bool` |     |

---

###### `withdraw`

Withdraw Curve LP tokens back to the user

• `function withdraw(uint256 _value)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Gauge.sol:84](contracts/test/Stub_CurveFi_Gauge.sol##L84)_

**_Parameters_**

| Name                                                   | Type      |
| ------------------------------------------------------ | --------- | --- |
| [`_value`](contracts/test/Stub_CurveFi_Gauge.sol##L84) | `uint256` |     |

---

###### `working_balances`

• `constant function working_balances(address): (uint256)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Gauge.sol:45](contracts/test/Stub_CurveFi_Gauge.sol##L45)_

**_Parameters_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Gauge.sol##L45) | `address` |     |

**_Returns_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Gauge.sol##L45) | `uint256` |     |

---

###### `working_supply`

• `constant function working_supply(): (uint256)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Gauge.sol:46](contracts/test/Stub_CurveFi_Gauge.sol##L46)_

**_Returns_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Gauge.sol##L46) | `uint256` |     |

---

###### `YEAR`

Rate taken from CRV

• `constant function YEAR(): (uint256)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Gauge.sol:51](contracts/test/Stub_CurveFi_Gauge.sol##L51)_

**_Returns_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Gauge.sol##L51) | `uint256` |     |

## contract `Stub_CurveFi_LPTokenY`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_LPTokenY.sol:14](contracts/test/Stub_CurveFi_LPTokenY.sol##L14)_

#### Events

###### `Approval`

• `event Approval(address owner, address spender, uint256 value)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol:75](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L75)_

**_Parameters_**

| Name                                                                                                     | Type      | Indexed |
| -------------------------------------------------------------------------------------------------------- | --------- | ------- | --- |
| [`owner`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L75)   | `address` | `true`  |     |
| [`spender`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L75) | `address` | `true`  |     |
| [`value`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L75)   | `uint256` | `false` |     |

---

###### `MinterAdded`

• `event MinterAdded(address account)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol:11](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L11)_

**_Parameters_**

| Name                                                                                                          | Type      | Indexed |
| ------------------------------------------------------------------------------------------------------------- | --------- | ------- | --- |
| [`account`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L11) | `address` | `true`  |     |

---

###### `MinterRemoved`

• `event MinterRemoved(address account)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol:12](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L12)_

**_Parameters_**

| Name                                                                                                          | Type      | Indexed |
| ------------------------------------------------------------------------------------------------------------- | --------- | ------- | --- |
| [`account`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L12) | `address` | `true`  |     |

---

###### `Transfer`

• `event Transfer(address from, address to, uint256 value)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol:69](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L69)_

**_Parameters_**

| Name                                                                                                   | Type      | Indexed |
| ------------------------------------------------------------------------------------------------------ | --------- | ------- | --- |
| [`from`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L69)  | `address` | `true`  |     |
| [`to`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L69)    | `address` | `true`  |     |
| [`value`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L69) | `uint256` | `false` |     |

#### Methods

###### `addMinter`

• `function addMinter(address account)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol:31](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L31)_

**_Parameters_**

| Name                                                                                                          | Type      |
| ------------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`account`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L31) | `address` |     |

---

###### `allowance`

• `constant function allowance(address owner, address spender): (uint256)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol:72](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L72)_

**_Parameters_**

| Name                                                                                                    | Type      |
| ------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`owner`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L72)   | `address` |     |
| [`spender`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L72) | `address` |     |

**_Returns_**

| Name                                                                                              | Type      |
| ------------------------------------------------------------------------------------------------- | --------- | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L72) | `uint256` |     |

---

###### `approve`

• `function approve(address spender, uint256 amount): (bool)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol:83](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L83)_

**_Parameters_**

| Name                                                                                                    | Type      |
| ------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`spender`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L83) | `address` |     |
| [`amount`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L83)  | `uint256` |     |

**_Returns_**

| Name                                                                                              | Type   |
| ------------------------------------------------------------------------------------------------- | ------ | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L83) | `bool` |     |

---

###### `balanceOf`

• `constant function balanceOf(address account): (uint256)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol:52](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L52)_

**_Parameters_**

| Name                                                                                                    | Type      |
| ------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`account`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L52) | `address` |     |

**_Returns_**

| Name                                                                                              | Type      |
| ------------------------------------------------------------------------------------------------- | --------- | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L52) | `uint256` |     |

---

###### `burn`

• `function burn(uint256 amount)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Burnable.sol:19](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Burnable.sol##L19)_

**_Parameters_**

| Name                                                                                                           | Type      |
| -------------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`amount`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Burnable.sol##L19) | `uint256` |     |

---

###### `burnFrom`

• `function burnFrom(address account, uint256 amount)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Burnable.sol:26](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Burnable.sol##L26)_

**_Parameters_**

| Name                                                                                                            | Type      |
| --------------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`account`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Burnable.sol##L26) | `address` |     |
| [`amount`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Burnable.sol##L26)  | `uint256` |     |

---

###### `decimals`

• `constant function decimals(): (uint8)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol:52](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L52)_

**_Returns_**

| Name                                                                                                      | Type    |
| --------------------------------------------------------------------------------------------------------- | ------- | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L52) | `uint8` |     |

---

###### `decreaseAllowance`

• `function decreaseAllowance(address spender, uint256 subtractedValue): (bool)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol:137](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L137)_

**_Parameters_**

| Name                                                                                                             | Type      |
| ---------------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`spender`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L137)         | `address` |     |
| [`subtractedValue`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L137) | `uint256` |     |

**_Returns_**

| Name                                                                                               | Type   |
| -------------------------------------------------------------------------------------------------- | ------ | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L137) | `bool` |     |

---

###### `increaseAllowance`

• `function increaseAllowance(address spender, uint256 addedValue): (bool)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol:118](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L118)_

**_Parameters_**

| Name                                                                                                        | Type      |
| ----------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`spender`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L118)    | `address` |     |
| [`addedValue`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L118) | `uint256` |     |

**_Returns_**

| Name                                                                                               | Type   |
| -------------------------------------------------------------------------------------------------- | ------ | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L118) | `bool` |     |

---

###### `initialize`

• `function initialize()`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_LPTokenY.sol:15](contracts/test/Stub_CurveFi_LPTokenY.sol##L15)_

---

###### `initialize`

• `function initialize(address sender)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Mintable.sol:14](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Mintable.sol##L14)_

**_Parameters_**

| Name                                                                                                           | Type      |
| -------------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`sender`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Mintable.sol##L14) | `address` |     |

---

###### `initialize`

• `function initialize(string name, string symbol, uint8 decimals)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol:19](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L19)_

**_Parameters_**

| Name                                                                                                           | Type     |
| -------------------------------------------------------------------------------------------------------------- | -------- | --- |
| [`name`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L19)   | `string` |     |
| [`symbol`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L19) | `string` |     |

---

###### `isMinter`

• `constant function isMinter(address account): (bool)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol:27](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L27)_

**_Parameters_**

| Name                                                                                                          | Type      |
| ------------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`account`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L27) | `address` |     |

**_Returns_**

| Name                                                                                                    | Type   |
| ------------------------------------------------------------------------------------------------------- | ------ | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L27) | `bool` |     |

---

###### `mint`

• `function mint(address account, uint256 amount): (bool)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Mintable.sol:25](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Mintable.sol##L25)_

**_Parameters_**

| Name                                                                                                            | Type      |
| --------------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`account`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Mintable.sol##L25) | `address` |     |
| [`amount`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Mintable.sol##L25)  | `uint256` |     |

**_Returns_**

| Name                                                                                                      | Type   |
| --------------------------------------------------------------------------------------------------------- | ------ | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Mintable.sol##L25) | `bool` |     |

---

###### `name`

• `constant function name(): (string)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol:28](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L28)_

**_Returns_**

| Name                                                                                                      | Type     |
| --------------------------------------------------------------------------------------------------------- | -------- | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L28) | `string` |     |

---

###### `renounceMinter`

• `function renounceMinter()`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol:35](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L35)_

---

###### `symbol`

• `constant function symbol(): (string)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol:36](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L36)_

**_Returns_**

| Name                                                                                                      | Type     |
| --------------------------------------------------------------------------------------------------------- | -------- | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L36) | `string` |     |

---

###### `totalSupply`

• `constant function totalSupply(): (uint256)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol:45](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L45)_

**_Returns_**

| Name                                                                                              | Type      |
| ------------------------------------------------------------------------------------------------- | --------- | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L45) | `uint256` |     |

---

###### `transfer`

• `function transfer(address recipient, uint256 amount): (bool)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol:64](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L64)_

**_Parameters_**

| Name                                                                                                      | Type      |
| --------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`recipient`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L64) | `address` |     |
| [`amount`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L64)    | `uint256` |     |

**_Returns_**

| Name                                                                                              | Type   |
| ------------------------------------------------------------------------------------------------- | ------ | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L64) | `bool` |     |

---

###### `transferFrom`

• `function transferFrom(address sender, address recipient, uint256 amount): (bool)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol:100](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L100)_

**_Parameters_**

| Name                                                                                                       | Type      |
| ---------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`sender`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L100)    | `address` |     |
| [`recipient`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L100) | `address` |     |

**_Returns_**

| Name                                                                                               | Type   |
| -------------------------------------------------------------------------------------------------- | ------ | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L100) | `bool` |     |

## contract `Stub_CurveFi_Minter`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Minter.sol:16](contracts/test/Stub_CurveFi_Minter.sol##L16)_

#### Methods

###### `__minted`

• `constant function __minted(address, address): (uint256)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Minter.sol:17](contracts/test/Stub_CurveFi_Minter.sol##L17)_

**_Parameters_**

| Name                                               | Type      |
| -------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Minter.sol##L17) | `address` |     |
| [`1`](contracts/test/Stub_CurveFi_Minter.sol##L17) | `address` |     |

**_Returns_**

| Name                                               | Type      |
| -------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Minter.sol##L17) | `uint256` |     |

---

###### `__token`

CRV token

• `constant function __token(): (address)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Minter.sol:21](contracts/test/Stub_CurveFi_Minter.sol##L21)_

**_Returns_**

| Name                                               | Type      |
| -------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Minter.sol##L21) | `address` |     |

---

###### `allowed_to_mint_for`

• `constant function allowed_to_mint_for(address, address): (bool)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Minter.sol:18](contracts/test/Stub_CurveFi_Minter.sol##L18)_

**_Parameters_**

| Name                                               | Type      |
| -------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Minter.sol##L18) | `address` |     |
| [`1`](contracts/test/Stub_CurveFi_Minter.sol##L18) | `address` |     |

**_Returns_**

| Name                                               | Type   |
| -------------------------------------------------- | ------ | --- |
| [`0`](contracts/test/Stub_CurveFi_Minter.sol##L18) | `bool` |     |

---

###### `initialize`

• `function initialize(address _token)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Minter.sol:23](contracts/test/Stub_CurveFi_Minter.sol##L23)_

**_Parameters_**

| Name                                                    | Type      |
| ------------------------------------------------------- | --------- | --- |
| [`_token`](contracts/test/Stub_CurveFi_Minter.sol##L23) | `address` |     |

---

###### `mint`

• `function mint(address gauge_addr)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Minter.sol:27](contracts/test/Stub_CurveFi_Minter.sol##L27)_

**_Parameters_**

| Name                                                        | Type      |
| ----------------------------------------------------------- | --------- | --- |
| [`gauge_addr`](contracts/test/Stub_CurveFi_Minter.sol##L27) | `address` |     |

---

###### `mint_for`

• `function mint_for(address gauge_addr, address _for)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Minter.sol:31](contracts/test/Stub_CurveFi_Minter.sol##L31)_

**_Parameters_**

| Name                                                        | Type      |
| ----------------------------------------------------------- | --------- | --- |
| [`gauge_addr`](contracts/test/Stub_CurveFi_Minter.sol##L31) | `address` |     |
| [`_for`](contracts/test/Stub_CurveFi_Minter.sol##L31)       | `address` |     |

---

###### `minted`

• `constant function minted(address _for, address gauge_addr): (uint256)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Minter.sol:43](contracts/test/Stub_CurveFi_Minter.sol##L43)_

**_Parameters_**

| Name                                                        | Type      |
| ----------------------------------------------------------- | --------- | --- |
| [`_for`](contracts/test/Stub_CurveFi_Minter.sol##L43)       | `address` |     |
| [`gauge_addr`](contracts/test/Stub_CurveFi_Minter.sol##L43) | `address` |     |

**_Returns_**

| Name                                               | Type      |
| -------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Minter.sol##L43) | `uint256` |     |

---

###### `toggle_approve_mint`

• `function toggle_approve_mint(address minting_user)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Minter.sol:35](contracts/test/Stub_CurveFi_Minter.sol##L35)_

**_Parameters_**

| Name                                                          | Type      |
| ------------------------------------------------------------- | --------- | --- |
| [`minting_user`](contracts/test/Stub_CurveFi_Minter.sol##L35) | `address` |     |

---

###### `token`

• `constant function token(): (address)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_Minter.sol:39](contracts/test/Stub_CurveFi_Minter.sol##L39)_

**_Returns_**

| Name                                               | Type      |
| -------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_Minter.sol##L39) | `address` |     |

## contract `Stub_CurveFi_SwapY`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_SwapY.sol:20](contracts/test/Stub_CurveFi_SwapY.sol##L20)_

#### Methods

###### `__balances`

• `constant function __balances(uint256): (uint256)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_CurveFi_SwapY.sol:27](contracts/test/Stub_CurveFi_SwapY.sol##L27)_

**_Parameters_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_SwapY.sol##L27) | `uint256` |     |

**_Returns_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_SwapY.sol##L27) | `uint256` |     |

---

###### `__coins`

• `constant function __coins(uint256): (address)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_CurveFi_SwapY.sol:28](contracts/test/Stub_CurveFi_SwapY.sol##L28)_

**_Parameters_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_SwapY.sol##L28) | `uint256` |     |

**_Returns_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_SwapY.sol##L28) | `address` |     |

---

###### `__fee`

• `constant function __fee(): (uint256)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_CurveFi_SwapY.sol:30](contracts/test/Stub_CurveFi_SwapY.sol##L30)_

**_Returns_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_SwapY.sol##L30) | `uint256` |     |

---

###### `__token`

• `constant function __token(): (address)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_CurveFi_SwapY.sol:26](contracts/test/Stub_CurveFi_SwapY.sol##L26)_

**_Returns_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_SwapY.sol##L26) | `address` |     |

---

###### `__underlying_coins`

• `constant function __underlying_coins(uint256): (address)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_CurveFi_SwapY.sol:29](contracts/test/Stub_CurveFi_SwapY.sol##L29)_

**_Parameters_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_SwapY.sol##L29) | `uint256` |     |

**_Returns_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_SwapY.sol##L29) | `address` |     |

---

###### `A`

• `constant function A(): (uint256)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_SwapY.sol:192](contracts/test/Stub_CurveFi_SwapY.sol##L192)_

**_Returns_**

| Name                                               | Type      |
| -------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_SwapY.sol##L192) | `uint256` |     |

---

###### `add_liquidity`

• `function add_liquidity(uint256[4] amounts, uint256 min_mint_amount)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_SwapY.sol:46](contracts/test/Stub_CurveFi_SwapY.sol##L46)_

**_Parameters_**

| Name                                                            | Type         |
| --------------------------------------------------------------- | ------------ | --- |
| [`amounts`](contracts/test/Stub_CurveFi_SwapY.sol##L46)         | `uint256[4]` |     |
| [`min_mint_amount`](contracts/test/Stub_CurveFi_SwapY.sol##L46) | `uint256`    |     |

---

###### `balances`

• `constant function balances(int128 i): (uint256)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_SwapY.sol:188](contracts/test/Stub_CurveFi_SwapY.sol##L188)_

**_Parameters_**

| Name                                               | Type     |
| -------------------------------------------------- | -------- | --- |
| [`i`](contracts/test/Stub_CurveFi_SwapY.sol##L188) | `int128` |     |

**_Returns_**

| Name                                               | Type      |
| -------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_SwapY.sol##L188) | `uint256` |     |

---

###### `calc_token_amount`

• `constant function calc_token_amount(uint256[4] amounts, bool deposit): (uint256)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_SwapY.sol:103](contracts/test/Stub_CurveFi_SwapY.sol##L103)_

**_Parameters_**

| Name                                                     | Type         |
| -------------------------------------------------------- | ------------ | --- |
| [`amounts`](contracts/test/Stub_CurveFi_SwapY.sol##L103) | `uint256[4]` |     |
| [`deposit`](contracts/test/Stub_CurveFi_SwapY.sol##L103) | `bool`       |     |

**_Returns_**

| Name                                               | Type      |
| -------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_SwapY.sol##L103) | `uint256` |     |

---

###### `coins`

• `constant function coins(int128 i): (address)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_SwapY.sol:201](contracts/test/Stub_CurveFi_SwapY.sol##L201)_

**_Parameters_**

| Name                                               | Type     |
| -------------------------------------------------- | -------- | --- |
| [`i`](contracts/test/Stub_CurveFi_SwapY.sol##L201) | `int128` |     |

**_Returns_**

| Name                                               | Type      |
| -------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_SwapY.sol##L201) | `address` |     |

---

###### `fee`

• `constant function fee(): (uint256)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_SwapY.sol:197](contracts/test/Stub_CurveFi_SwapY.sol##L197)_

**_Returns_**

| Name                                               | Type      |
| -------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_SwapY.sol##L197) | `uint256` |     |

---

###### `initialize`

• `function initialize(address[4] _coins, address[4] _underlying_coins, address _pool_token, uint256 _fee)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_SwapY.sol:32](contracts/test/Stub_CurveFi_SwapY.sol##L32)_

**_Parameters_**

| Name                                                              | Type         |
| ----------------------------------------------------------------- | ------------ | --- |
| [`_coins`](contracts/test/Stub_CurveFi_SwapY.sol##L33)            | `address[4]` |     |
| [`_underlying_coins`](contracts/test/Stub_CurveFi_SwapY.sol##L34) | `address[4]` |     |
| [`_fee`](contracts/test/Stub_CurveFi_SwapY.sol##L36)              | `uint256`    |     |

---

###### `N_COINS`

• `constant function N_COINS(): (uint256)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_CurveFi_SwapY.sol:23](contracts/test/Stub_CurveFi_SwapY.sol##L23)_

**_Returns_**

| Name                                              | Type      |
| ------------------------------------------------- | --------- | --- |
| [`0`](contracts/test/Stub_CurveFi_SwapY.sol##L23) | `uint256` |     |

---

###### `remove_liquidity`

• `function remove_liquidity(uint256 _amount, uint256[4] min_amounts)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_SwapY.sol:59](contracts/test/Stub_CurveFi_SwapY.sol##L59)_

**_Parameters_**

| Name                                                        | Type         |
| ----------------------------------------------------------- | ------------ | --- |
| [`_amount`](contracts/test/Stub_CurveFi_SwapY.sol##L59)     | `uint256`    |     |
| [`min_amounts`](contracts/test/Stub_CurveFi_SwapY.sol##L59) | `uint256[4]` |     |

---

###### `remove_liquidity_imbalance`

• `function remove_liquidity_imbalance(uint256[4] amounts, uint256 max_burn_amount)`

&nbsp; _Defined in [contracts/test/Stub_CurveFi_SwapY.sol:72](contracts/test/Stub_CurveFi_SwapY.sol##L72)_

**_Parameters_**

| Name                                                            | Type         |
| --------------------------------------------------------------- | ------------ | --- |
| [`amounts`](contracts/test/Stub_CurveFi_SwapY.sol##L72)         | `uint256[4]` |     |
| [`max_burn_amount`](contracts/test/Stub_CurveFi_SwapY.sol##L72) | `uint256`    |     |

## contract `Stub_ERC20`

&nbsp; _Defined in [contracts/test/Stub_ERC20.sol:7](contracts/test/Stub_ERC20.sol##L7)_

#### Events

###### `Approval`

• `event Approval(address owner, address spender, uint256 value)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol:75](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L75)_

**_Parameters_**

| Name                                                                                                     | Type      | Indexed |
| -------------------------------------------------------------------------------------------------------- | --------- | ------- | --- |
| [`owner`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L75)   | `address` | `true`  |     |
| [`spender`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L75) | `address` | `true`  |     |
| [`value`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L75)   | `uint256` | `false` |     |

---

###### `MinterAdded`

• `event MinterAdded(address account)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol:11](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L11)_

**_Parameters_**

| Name                                                                                                          | Type      | Indexed |
| ------------------------------------------------------------------------------------------------------------- | --------- | ------- | --- |
| [`account`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L11) | `address` | `true`  |     |

---

###### `MinterRemoved`

• `event MinterRemoved(address account)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol:12](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L12)_

**_Parameters_**

| Name                                                                                                          | Type      | Indexed |
| ------------------------------------------------------------------------------------------------------------- | --------- | ------- | --- |
| [`account`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L12) | `address` | `true`  |     |

---

###### `Transfer`

• `event Transfer(address from, address to, uint256 value)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol:69](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L69)_

**_Parameters_**

| Name                                                                                                   | Type      | Indexed |
| ------------------------------------------------------------------------------------------------------ | --------- | ------- | --- |
| [`from`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L69)  | `address` | `true`  |     |
| [`to`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L69)    | `address` | `true`  |     |
| [`value`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L69) | `uint256` | `false` |     |

#### Methods

###### `addMinter`

• `function addMinter(address account)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol:31](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L31)_

**_Parameters_**

| Name                                                                                                          | Type      |
| ------------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`account`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L31) | `address` |     |

---

###### `allowance`

• `constant function allowance(address owner, address spender): (uint256)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol:72](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L72)_

**_Parameters_**

| Name                                                                                                    | Type      |
| ------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`owner`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L72)   | `address` |     |
| [`spender`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L72) | `address` |     |

**_Returns_**

| Name                                                                                              | Type      |
| ------------------------------------------------------------------------------------------------- | --------- | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L72) | `uint256` |     |

---

###### `approve`

• `function approve(address spender, uint256 amount): (bool)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol:83](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L83)_

**_Parameters_**

| Name                                                                                                    | Type      |
| ------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`spender`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L83) | `address` |     |
| [`amount`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L83)  | `uint256` |     |

**_Returns_**

| Name                                                                                              | Type   |
| ------------------------------------------------------------------------------------------------- | ------ | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L83) | `bool` |     |

---

###### `balanceOf`

• `constant function balanceOf(address account): (uint256)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol:52](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L52)_

**_Parameters_**

| Name                                                                                                    | Type      |
| ------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`account`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L52) | `address` |     |

**_Returns_**

| Name                                                                                              | Type      |
| ------------------------------------------------------------------------------------------------- | --------- | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L52) | `uint256` |     |

---

###### `decimals`

• `constant function decimals(): (uint8)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol:52](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L52)_

**_Returns_**

| Name                                                                                                      | Type    |
| --------------------------------------------------------------------------------------------------------- | ------- | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L52) | `uint8` |     |

---

###### `decreaseAllowance`

• `function decreaseAllowance(address spender, uint256 subtractedValue): (bool)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol:137](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L137)_

**_Parameters_**

| Name                                                                                                             | Type      |
| ---------------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`spender`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L137)         | `address` |     |
| [`subtractedValue`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L137) | `uint256` |     |

**_Returns_**

| Name                                                                                               | Type   |
| -------------------------------------------------------------------------------------------------- | ------ | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L137) | `bool` |     |

---

###### `increaseAllowance`

• `function increaseAllowance(address spender, uint256 addedValue): (bool)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol:118](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L118)_

**_Parameters_**

| Name                                                                                                        | Type      |
| ----------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`spender`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L118)    | `address` |     |
| [`addedValue`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L118) | `uint256` |     |

**_Returns_**

| Name                                                                                               | Type   |
| -------------------------------------------------------------------------------------------------- | ------ | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L118) | `bool` |     |

---

###### `initialize`

• `function initialize(string name, string symbol, uint8 decimals)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol:19](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L19)_

**_Parameters_**

| Name                                                                                                           | Type     |
| -------------------------------------------------------------------------------------------------------------- | -------- | --- |
| [`name`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L19)   | `string` |     |
| [`symbol`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L19) | `string` |     |

---

###### `initialize`

• `function initialize(string _name, string _symbol, uint8 _decimals, uint256 _supply)`

&nbsp; _Defined in [contracts/test/Stub_ERC20.sol:8](contracts/test/Stub_ERC20.sol##L8)_

**_Parameters_**

| Name                                            | Type      |
| ----------------------------------------------- | --------- | --- |
| [`_name`](contracts/test/Stub_ERC20.sol##L9)    | `string`  |     |
| [`_symbol`](contracts/test/Stub_ERC20.sol##L10) | `string`  |     |
| [`_supply`](contracts/test/Stub_ERC20.sol##L12) | `uint256` |     |

---

###### `initialize`

• `function initialize(address sender)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Mintable.sol:14](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Mintable.sol##L14)_

**_Parameters_**

| Name                                                                                                           | Type      |
| -------------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`sender`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Mintable.sol##L14) | `address` |     |

---

###### `isMinter`

• `constant function isMinter(address account): (bool)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol:27](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L27)_

**_Parameters_**

| Name                                                                                                          | Type      |
| ------------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`account`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L27) | `address` |     |

**_Returns_**

| Name                                                                                                    | Type   |
| ------------------------------------------------------------------------------------------------------- | ------ | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L27) | `bool` |     |

---

###### `mint`

• `function mint(address account, uint256 amount): (bool)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Mintable.sol:25](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Mintable.sol##L25)_

**_Parameters_**

| Name                                                                                                            | Type      |
| --------------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`account`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Mintable.sol##L25) | `address` |     |
| [`amount`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Mintable.sol##L25)  | `uint256` |     |

**_Returns_**

| Name                                                                                                      | Type   |
| --------------------------------------------------------------------------------------------------------- | ------ | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Mintable.sol##L25) | `bool` |     |

---

###### `name`

• `constant function name(): (string)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol:28](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L28)_

**_Returns_**

| Name                                                                                                      | Type     |
| --------------------------------------------------------------------------------------------------------- | -------- | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L28) | `string` |     |

---

###### `renounceMinter`

• `function renounceMinter()`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol:35](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L35)_

---

###### `symbol`

• `constant function symbol(): (string)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol:36](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L36)_

**_Returns_**

| Name                                                                                                      | Type     |
| --------------------------------------------------------------------------------------------------------- | -------- | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L36) | `string` |     |

---

###### `totalSupply`

• `constant function totalSupply(): (uint256)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol:45](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L45)_

**_Returns_**

| Name                                                                                              | Type      |
| ------------------------------------------------------------------------------------------------- | --------- | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L45) | `uint256` |     |

---

###### `transfer`

• `function transfer(address recipient, uint256 amount): (bool)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol:64](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L64)_

**_Parameters_**

| Name                                                                                                      | Type      |
| --------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`recipient`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L64) | `address` |     |
| [`amount`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L64)    | `uint256` |     |

**_Returns_**

| Name                                                                                              | Type   |
| ------------------------------------------------------------------------------------------------- | ------ | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L64) | `bool` |     |

---

###### `transferFrom`

• `function transferFrom(address sender, address recipient, uint256 amount): (bool)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol:100](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L100)_

**_Parameters_**

| Name                                                                                                       | Type      |
| ---------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`sender`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L100)    | `address` |     |
| [`recipient`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L100) | `address` |     |

**_Returns_**

| Name                                                                                               | Type   |
| -------------------------------------------------------------------------------------------------- | ------ | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L100) | `bool` |     |

## contract `Stub_YERC20`

&nbsp; _Defined in [contracts/test/Stub_YERC20.sol:16](contracts/test/Stub_YERC20.sol##L16)_

#### Events

###### `Approval`

• `event Approval(address owner, address spender, uint256 value)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol:75](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L75)_

**_Parameters_**

| Name                                                                                                     | Type      | Indexed |
| -------------------------------------------------------------------------------------------------------- | --------- | ------- | --- |
| [`owner`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L75)   | `address` | `true`  |     |
| [`spender`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L75) | `address` | `true`  |     |
| [`value`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L75)   | `uint256` | `false` |     |

---

###### `Transfer`

• `event Transfer(address from, address to, uint256 value)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol:69](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L69)_

**_Parameters_**

| Name                                                                                                   | Type      | Indexed |
| ------------------------------------------------------------------------------------------------------ | --------- | ------- | --- |
| [`from`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L69)  | `address` | `true`  |     |
| [`to`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L69)    | `address` | `true`  |     |
| [`value`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol##L69) | `uint256` | `false` |     |

#### Methods

###### `allowance`

• `constant function allowance(address owner, address spender): (uint256)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol:72](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L72)_

**_Parameters_**

| Name                                                                                                    | Type      |
| ------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`owner`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L72)   | `address` |     |
| [`spender`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L72) | `address` |     |

**_Returns_**

| Name                                                                                              | Type      |
| ------------------------------------------------------------------------------------------------- | --------- | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L72) | `uint256` |     |

---

###### `approve`

• `function approve(address spender, uint256 amount): (bool)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol:83](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L83)_

**_Parameters_**

| Name                                                                                                    | Type      |
| ------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`spender`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L83) | `address` |     |
| [`amount`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L83)  | `uint256` |     |

**_Returns_**

| Name                                                                                              | Type   |
| ------------------------------------------------------------------------------------------------- | ------ | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L83) | `bool` |     |

---

###### `balanceOf`

• `constant function balanceOf(address account): (uint256)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol:52](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L52)_

**_Parameters_**

| Name                                                                                                    | Type      |
| ------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`account`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L52) | `address` |     |

**_Returns_**

| Name                                                                                              | Type      |
| ------------------------------------------------------------------------------------------------- | --------- | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L52) | `uint256` |     |

---

###### `decimals`

• `constant function decimals(): (uint8)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol:52](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L52)_

**_Returns_**

| Name                                                                                                      | Type    |
| --------------------------------------------------------------------------------------------------------- | ------- | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L52) | `uint8` |     |

---

###### `decreaseAllowance`

• `function decreaseAllowance(address spender, uint256 subtractedValue): (bool)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol:137](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L137)_

**_Parameters_**

| Name                                                                                                             | Type      |
| ---------------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`spender`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L137)         | `address` |     |
| [`subtractedValue`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L137) | `uint256` |     |

**_Returns_**

| Name                                                                                               | Type   |
| -------------------------------------------------------------------------------------------------- | ------ | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L137) | `bool` |     |

---

###### `deposit`

• `function deposit(uint256 amount)`

&nbsp; _Defined in [contracts/test/Stub_YERC20.sol:39](contracts/test/Stub_YERC20.sol##L39)_

**_Parameters_**

| Name                                            | Type      |
| ----------------------------------------------- | --------- | --- |
| [`amount`](contracts/test/Stub_YERC20.sol##L39) | `uint256` |     |

---

###### `getPricePerFullShare`

• `constant function getPricePerFullShare(): (uint256)`

&nbsp; _Defined in [contracts/test/Stub_YERC20.sol:55](contracts/test/Stub_YERC20.sol##L55)_

**_Returns_**

| Name                                       | Type      |
| ------------------------------------------ | --------- | --- |
| [`0`](contracts/test/Stub_YERC20.sol##L55) | `uint256` |     |

---

###### `increaseAllowance`

• `function increaseAllowance(address spender, uint256 addedValue): (bool)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol:118](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L118)_

**_Parameters_**

| Name                                                                                                        | Type      |
| ----------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`spender`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L118)    | `address` |     |
| [`addedValue`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L118) | `uint256` |     |

**_Returns_**

| Name                                                                                               | Type   |
| -------------------------------------------------------------------------------------------------- | ------ | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L118) | `bool` |     |

---

###### `initialize`

• `function initialize(string name, string symbol, uint8 decimals)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol:19](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L19)_

**_Parameters_**

| Name                                                                                                           | Type     |
| -------------------------------------------------------------------------------------------------------------- | -------- | --- |
| [`name`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L19)   | `string` |     |
| [`symbol`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L19) | `string` |     |

---

###### `initialize`

• `function initialize(address _underlying, string symb, uint8 uDecimals)`

&nbsp; _Defined in [contracts/test/Stub_YERC20.sol:24](contracts/test/Stub_YERC20.sol##L24)_

**_Parameters_**

| Name                                                 | Type      |
| ---------------------------------------------------- | --------- | --- |
| [`_underlying`](contracts/test/Stub_YERC20.sol##L25) | `address` |     |
| [`symb`](contracts/test/Stub_YERC20.sol##L26)        | `string`  |     |

---

###### `name`

• `constant function name(): (string)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol:28](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L28)_

**_Returns_**

| Name                                                                                                      | Type     |
| --------------------------------------------------------------------------------------------------------- | -------- | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L28) | `string` |     |

---

###### `symbol`

• `constant function symbol(): (string)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol:36](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L36)_

**_Returns_**

| Name                                                                                                      | Type     |
| --------------------------------------------------------------------------------------------------------- | -------- | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L36) | `string` |     |

---

###### `token`

yToken functions

• `function token(): (address)`

&nbsp; _Defined in [contracts/test/Stub_YERC20.sol:35](contracts/test/Stub_YERC20.sol##L35)_

**_Returns_**

| Name                                       | Type      |
| ------------------------------------------ | --------- | --- |
| [`0`](contracts/test/Stub_YERC20.sol##L35) | `address` |     |

---

###### `totalSupply`

• `constant function totalSupply(): (uint256)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol:45](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L45)_

**_Returns_**

| Name                                                                                              | Type      |
| ------------------------------------------------------------------------------------------------- | --------- | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L45) | `uint256` |     |

---

###### `transfer`

• `function transfer(address recipient, uint256 amount): (bool)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol:64](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L64)_

**_Parameters_**

| Name                                                                                                      | Type      |
| --------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`recipient`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L64) | `address` |     |
| [`amount`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L64)    | `uint256` |     |

**_Returns_**

| Name                                                                                              | Type   |
| ------------------------------------------------------------------------------------------------- | ------ | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L64) | `bool` |     |

---

###### `transferFrom`

• `function transferFrom(address sender, address recipient, uint256 amount): (bool)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol:100](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L100)_

**_Parameters_**

| Name                                                                                                       | Type      |
| ---------------------------------------------------------------------------------------------------------- | --------- | --- |
| [`sender`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L100)    | `address` |     |
| [`recipient`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L100) | `address` |     |

**_Returns_**

| Name                                                                                               | Type   |
| -------------------------------------------------------------------------------------------------- | ------ | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L100) | `bool` |     |

---

###### `underlying`

• `constant function underlying(): (ERC20Mintable)` _(generated)_

&nbsp; _Defined in [contracts/test/Stub_YERC20.sol:21](contracts/test/Stub_YERC20.sol##L21)_

**_Returns_**

| Name                                       | Type            |
| ------------------------------------------ | --------------- | --- |
| [`0`](contracts/test/Stub_YERC20.sol##L21) | `ERC20Mintable` |     |

---

###### `withdraw`

• `function withdraw(uint256 shares)`

&nbsp; _Defined in [contracts/test/Stub_YERC20.sol:47](contracts/test/Stub_YERC20.sol##L47)_

**_Parameters_**

| Name                                            | Type      |
| ----------------------------------------------- | --------- | --- |
| [`shares`](contracts/test/Stub_YERC20.sol##L47) | `uint256` |     |

## Usage

## Testing

## Support
