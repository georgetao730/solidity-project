const Hello = artifacts.require("Hello");
const StudentDemo = artifacts.require("StudentDemo");

module.exports = function (deployer) {
  deployer.deploy(Hello, "Hello, World!");
  deployer.deploy(StudentDemo);
};