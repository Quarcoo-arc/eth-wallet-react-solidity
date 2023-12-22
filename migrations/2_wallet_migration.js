const WalletContract = artifact.require("Wallet");

module.exports = function (deployer) {
  deployer.deploy(WalletContract);
};
