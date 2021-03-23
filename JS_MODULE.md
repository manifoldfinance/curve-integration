## Curve-JS Module

```js

  /*
   * 
   * @exports constant Functions
   *
   */

  curveFi_CRVMinter() {
    return this.MoneyToCurve.methods
      .curveFi_CRVMinter()
      .call()
      .then((resp) => {
        return resp;
      })
      .catch((err) => {
        console.error(err);
      });
  }
  curveFi_CRVToken() {
    return this.MoneyToCurve.methods
      .curveFi_CRVToken()
      .call()
      .then((resp) => {
        return resp;
      })
      .catch((err) => {
        console.error(err);
      });
  }
  curveFi_Deposit() {
    return this.MoneyToCurve.methods
      .curveFi_Deposit()
      .call()
      .then((resp) => {
        return resp;
      })
      .catch((err) => {
        console.error(err);
      });
  }
  curveFi_LPGauge() {
    return this.MoneyToCurve.methods
      .curveFi_LPGauge()
      .call()
      .then((resp) => {
        return resp;
      })
      .catch((err) => {
        console.error(err);
      });
  }
  curveFi_LPToken() {
    return this.MoneyToCurve.methods
      .curveFi_LPToken()
      .call()
      .then((resp) => {
        return resp;
      })
      .catch((err) => {
        console.error(err);
      });
  }
  curveFi_Swap() {
    return this.MoneyToCurve.methods
      .curveFi_Swap()
      .call()
      .then((resp) => {
        return resp;
      })
      .catch((err) => {
        console.error(err);
      });
  }
  isOwner() {
    return this.MoneyToCurve.methods
      .isOwner()
      .call()
      .then((resp) => {
        return resp;
      })
      .catch((err) => {
        console.error(err);
      });
  }
  owner() {
    return this.MoneyToCurve.methods
      .owner()
      .call()
      .then((resp) => {
        return resp;
      })
      .catch((err) => {
        console.error(err);
      });
  }
  curveLPTokenStaked() {
    return this.MoneyToCurve.methods
      .curveLPTokenStaked()
      .call()
      .then((resp) => {
        return resp;
      })
      .catch((err) => {
        console.error(err);
      });
  }
  curveLPTokenUnstaked() {
    return this.MoneyToCurve.methods
      .curveLPTokenUnstaked()
      .call()
      .then((resp) => {
        return resp;
      })
      .catch((err) => {
        console.error(err);
      });
  }
  curveLPTokenBalance() {
    return this.MoneyToCurve.methods
      .curveLPTokenBalance()
      .call()
      .then((resp) => {
        return resp;
      })
      .catch((err) => {
        console.error(err);
      });
  }
  balanceOfAll() {
    return this.MoneyToCurve.methods
      .balanceOfAll()
      .call()
      .then((resp) => {
        return resp;
      })
      .catch((err) => {
        console.error(err);
      });
  }
  normalizedBalance() {
    return this.MoneyToCurve.methods
      .normalizedBalance()
      .call()
      .then((resp) => {
        return resp;
      })
      .catch((err) => {
        console.error(err);
      });
  }

  /*
   *
   * @exports Transaction Functions
   *
   */

  renounceOwnership() {
    if (!this.account) return Promise.reject(new Error('Unlock Account'));
    return this.MoneyToCurve.methods
      .renounceOwnership()
      .send({
        from: this.account,
      })
      .on('transactionHash', (hash) => {
        console.log(hash);
        this.loading = true;
      })
      .then((resp) => {
        this.loading = false;
        return resp;
      })
      .catch((err) => {
        this.loading = false;
        console.error(err);
      });
  }
  transferOwnership(newOwner) {
    if (!this.account) return Promise.reject(new Error('Unlock Account'));
    return this.MoneyToCurve.methods
      .transferOwnership(newOwner)
      .send({
        from: this.account,
      })
      .on('transactionHash', (hash) => {
        console.log(hash);
        this.loading = true;
      })
      .then((resp) => {
        this.loading = false;
        return resp;
      })
      .catch((err) => {
        this.loading = false;
        console.error(err);
      });
  }
  initialize() {
    if (!this.account) return Promise.reject(new Error('Unlock Account'));
    return this.MoneyToCurve.methods
      .initialize()
      .send({
        from: this.account,
      })
      .on('transactionHash', (hash) => {
        console.log(hash);
        this.loading = true;
      })
      .then((resp) => {
        this.loading = false;
        return resp;
      })
      .catch((err) => {
        this.loading = false;
        console.error(err);
      });
  }
  initialize(sender) {
    if (!this.account) return Promise.reject(new Error('Unlock Account'));
    return this.MoneyToCurve.methods
      .initialize(sender)
      .send({
        from: this.account,
      })
      .on('transactionHash', (hash) => {
        console.log(hash);
        this.loading = true;
      })
      .then((resp) => {
        this.loading = false;
        return resp;
      })
      .catch((err) => {
        this.loading = false;
        console.error(err);
      });
  }
  setup(_depositContract, _gaugeContract, _minterContract) {
    if (!this.account) return Promise.reject(new Error('Unlock Account'));
    return this.MoneyToCurve.methods
      .setup(_depositContract, _gaugeContract, _minterContract)
      .send({
        from: this.account,
      })
      .on('transactionHash', (hash) => {
        console.log(hash);
        this.loading = true;
      })
      .then((resp) => {
        this.loading = false;
        return resp;
      })
      .catch((err) => {
        this.loading = false;
        console.error(err);
      });
  }
  multiStepDeposit(_amounts) {
    if (!this.account) return Promise.reject(new Error('Unlock Account'));
    return this.MoneyToCurve.methods
      .multiStepDeposit(new BN(_amounts, 10))
      .send({
        from: this.account,
      })
      .on('transactionHash', (hash) => {
        console.log(hash);
        this.loading = true;
      })
      .then((resp) => {
        this.loading = false;
        return resp;
      })
      .catch((err) => {
        this.loading = false;
        console.error(err);
      });
  }
  multiStepWithdraw(_amounts) {
    if (!this.account) return Promise.reject(new Error('Unlock Account'));
    return this.MoneyToCurve.methods
      .multiStepWithdraw(new BN(_amounts, 10))
      .send({
        from: this.account,
      })
      .on('transactionHash', (hash) => {
        console.log(hash);
        this.loading = true;
      })
      .then((resp) => {
        this.loading = false;
        return resp;
      })
      .catch((err) => {
        this.loading = false;
        console.error(err);
      });
  }
```
