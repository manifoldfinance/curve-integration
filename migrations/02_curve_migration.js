var MoneyToCurve = artifacts.require("MoneyToCurve");

module.exports = function (deployer) {
  console.log("Deploying MoneyToCurve");
  deployer.deploy(MoneyToCurve);
};
