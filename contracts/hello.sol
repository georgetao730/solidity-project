// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.4;

contract Hello {
    string public message;

    constructor(string memory _message) {
        message = _message;
    }

    function update(string memory _message) public {
        message = _message;
    }
}