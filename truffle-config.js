module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  networks: {
    development: {
      host: "localhost",
      port: 9545,
      network_id: "*",
      gas: 8000000,
      gasPrice: 1000000000, // web3.eth.gasPrice
    },
    coverage: {
      host: "localhost",
      port: 8555,
      network_id: "*",
      gas: 8000000,
      gasPrice: 1000000000, // web3.eth.gasPrice
    },
  },
  compilers: {
    solc: {
      version: "0.5.17",
      settings: {
        optimizer: {
          enabled: false,
          runs: 200,
        },
      },
    },
  },
  plugins: ["solidity-coverage"],
  mocha: {
    reporter: "eth-gas-reporter",
    reporterOptions: {
      currency: "USD",
      gasPrice: 20,
      onlyCalledMethods: false,
      noColors: true,
      rst: true,
      rstTitle: "Gas Usage",
      showTimeSpent: true,
      excludeContracts: ["Migrations"],
      proxyResolver: "EtherRouter",
      codechecks: true,
      showMethodSig: true,
    },
  },
};
