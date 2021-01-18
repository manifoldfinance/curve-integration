const Web3 = require("web3");
const Provider = require("@truffle/hdwallet-provider");
const MoneyToCurve = require("../build/contracts/MoneyToCurve.json");
const address = "";

const dotenv = require("dotenv").config();
const privateKey = dotenv.parsed.DEV_MNEMONIC;
const infuraUrl = "https://kovan.infura.io/v3/" + dotenv.parsed.INFURA_ID;

const init3 = async () => {
  const provider = new Provider(privateKey, infuraUrl);
  const web3 = new Web3(provider);
  const networkId = await web3.eth.net.getId();
  const moneyToCurve = new web3.eth.Contract(MoneyToCurve.abi, MoneyToCurve.networks[networkId].address);

  console.log(moneyToCurve);

  console.log(await moneyToCurve.methods.data().call());
  console.log(`Old data value: ${await moneyToCurve.methods.data().call()}`);
  const receipt = await moneyToCurve.methods.setData(3).send({ from: address });
  console.log(`Transaction hash: ${receipt.transactionHash}`);
  console.log(`New data value: ${await moneyToCurve.methods.data().call()}`);
};

init3();
