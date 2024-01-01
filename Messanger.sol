//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;
contract Messanger {
    uint public counter;
    address public owner;
    string public message;

    constructor(){
        owner = msg.sender;
    }

    function updateMyMessage(string memory _myMessage) public {
        if(msg.sender == owner){
        message = _myMessage;
        counter++;
        }
    }

}