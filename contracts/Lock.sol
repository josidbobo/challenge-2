// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract SwissBank {
    uint private amount;

    event Withdrawal(uint amount, uint when);

    constructor() {
        owner = msg.sender;
    }
    address owner;
    function withdraw() public payable returns (uint) {
        // Uncomment this line, and the import of "hardhat/console.sol", to print a log in your terminal
        // console.log("Unlock time is %o and block timestamp is %o", unlockTime, block.timestamp);

        require(msg.sender == owner, "You aren't the owner");

        emit Withdrawal(address(this).balance, block.timestamp);

        payable(owner).transfer(amount);
        return amount;
    }

    function deposit(uint _amount) public {
        require(msg.sender == owner, "You are not the owner of the account");
        amount += _amount;
    }
}
