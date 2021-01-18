module.exports = {
  client: require("ganache-cli"),
  skipFiles: ["mocks"],
  providerOptions: {
    default_balance_ether: 10000000,
  },
  mocha: {
    grep: "@skip-on-coverage", // Find everything with this tag
    invert: true, // Run the grep's inverse set.
  },
};
