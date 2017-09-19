var Lancemain = artifacts.require("./Lancemain.sol");

module.exports = function(deployer) {
  deployer.deploy(Lancemain);
};
