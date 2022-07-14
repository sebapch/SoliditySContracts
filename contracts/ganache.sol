// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract ganache {
    
    //Address of smart contract owner
    address public owner;

    //address of the Smart Contract
    address public smartContract;

    // Declare the message
    string message = "";

    // Event of construction of the smart contract
    event newContract(address owner, address smartContract);

    // Event of msg publishing
    event newMessage(string message);

    //Constructor
    constructor(){
        owner = msg.sender;
        smartContract = address(this);
        emit newContract(owner, smartContract);
    }

    // Publish the message to the Blockchain
    function setMessage(string memory _message) public {
        message = _message;
        emit newMessage(message);
    }

    // View the message in the Blockchain
    function getMessage() public view returns (string memory){
        return message;
    }
}