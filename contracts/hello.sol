// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

contract Hello {
    string public message;

    constructor(string memory _message) {
        message = _message;
    }

    function update(string memory _message) public {
        message = _message;
    }
}