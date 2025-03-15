const InsertionSort = artifacts.require("InsertionSort");

contract("InsertionSort", accounts => {
  it("should sort the array [2, 5, 3, 1] correctly", async () => {
    const instance = await InsertionSort.deployed();
    const customArray = [2, 5, 3, 1];
    const result = await instance.sort.call(customArray);
    assert.equal(result.toString(), "1,2,3,5", "The array was not sorted correctly");
  });

  it("should sort a custom array correctly", async () => {
    const instance = await InsertionSort.deployed();
    const customArray = [4, 2, 7, 1];
    const result = await instance.sort.call(customArray);
    assert.equal(result.toString(), "1,2,4,7", "The array was not sorted correctly");
  });
});