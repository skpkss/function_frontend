//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract DisplayContract {
    uint public number;
    string public message;

    function displayNumber() public view returns (uint) {
        return number;
    }

    function displayMessage() public view returns (string memory) {
        return message;
    }

    constructor() {
        number = 5;
        message = "metacrafter";
    }
}
