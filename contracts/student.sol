// SPDX-License-Identifier: UNLICENSED
pragma  solidity ^0.8.29;

contract StudentDemo {

    struct Student {
        string name;
        uint  age;
    }
    Student public student;

    function init() public {
        student.name = "zhangsan";
        student.age = 18;
    }
    
    function getName() public view returns(string memory) {
        return student.name;
    }
}