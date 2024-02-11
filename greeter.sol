//SPDX-License-Identifier: MIT
pragma solidity >= 0.4.0 <0.9.0;
contract Greeter{
    string public message='Hello World!';
    address public owner;
    constructor() {
        owner=msg.sender;
    }
    modifier onlyOwner(){
        require(
            msg.sender==owner,
            "Ownalbe Contract: Caller is not the owner"
        );
        _;
    }
    function setGreeting(string memory _message) public onlyOwner{
        message = _message;
    }
    function greet() public view returns(string memory){
        return message;
    }

}