//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;
contract ExceptionRequireExample{
    mapping (address => uint) public balanceReceived;
    function receiveMoney() public payable{
        balanceReceived[msg.sender] += msg.value;
    }
    function withdrawMoney(address payable _to, uint _amount) public {
        require(_amount <= balanceReceived[msg.sender],"Not Enough Money,Aborted!!");
            balanceReceived[msg.sender] -= _amount;
            _to.transfer(_amount);
        
    }
    function getBalance() public view returns(uint){
        return balanceReceived[msg.sender];
    }

}