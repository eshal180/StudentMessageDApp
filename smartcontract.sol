pragma solidity ^0.8.20;

contract StudentMessage {

    string private message;
    address public owner;

    constructor() {
        owner = msg.sender;
        message = "Hello Blockchain!";
    }

    function setMessage(string memory _message) public {
        message = _message;
    }

    function getMessage() public view returns (string memory) {
        return message;
    }

    function getOwner() public view returns (address) {
        return owner;
    }

    function clearMessage() public {
        message = "";
    }
}