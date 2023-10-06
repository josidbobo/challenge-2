// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract SwissBank {
    uint private amount;

    constructor() {
        owner = msg.sender;
    }
    address owner;
    function balance() public payable returns (uint) {
        require(msg.sender == owner, "You aren't the owner");
        return amount;
    }

    function deposit(uint _amount) public {
        require(msg.sender == owner, "You are not the owner of the account");
        amount += _amount;
    }
}
