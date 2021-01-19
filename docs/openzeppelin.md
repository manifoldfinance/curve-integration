
## library `Address`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/utils/Address.sol:6](node_modules/@openzeppelin/contracts-ethereum-package/contracts/utils/Address.sol##L6)_

## contract `Context`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/GSN/Context.sol:15](node_modules/@openzeppelin/contracts-ethereum-package/contracts/GSN/Context.sol##L15)_

## contract `ERC20`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol:33](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol##L33)_

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

## contract `ERC20Burnable`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Burnable.sol:13](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Burnable.sol##L13)_

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

## contract `ERC20Detailed`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol:9](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L9)_

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

###### `decimals`

• `constant function decimals(): (uint8)`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol:52](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L52)_

**_Returns_**

| Name                                                                                                      | Type    |
| --------------------------------------------------------------------------------------------------------- | ------- | --- |
| [`0`](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol##L52) | `uint8` |     |

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

## contract `ERC20Mintable`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Mintable.sol:13](node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Mintable.sol##L13)_

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

###### `renounceMinter`

• `function renounceMinter()`

&nbsp; _Defined in [node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol:35](node_modules/@openzeppelin/contracts-ethereum-package/contracts/access/roles/MinterRole.sol##L35)_

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
