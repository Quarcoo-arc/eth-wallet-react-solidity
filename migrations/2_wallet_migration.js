const WalletContract = artifacts.require("Wallet");

module.exports = function (deployer) {
  deployer.deploy(WalletContract);
};
