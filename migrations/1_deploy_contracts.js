const Hello = artifacts.require("Hello");
const StudentDemo = artifacts.require("StudentDemo");
const InsertionSort = artifacts.require("InsertionSort");

module.exports = function (deployer) {
  deployer.deploy(Hello, "Hello, World!");
  deployer.deploy(StudentDemo);
  deployer.deploy(InsertionSort);
};