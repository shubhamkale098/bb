// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;


contract LedgerBalance{
    mapping(address => uint) balance;
    mapping(address => string) name;


    function updateBalance() public returns(uint){
            balance[msg.sender]=20;
            return balance[msg.sender];
    }


    function senderInfo() public returns(string memory){
        name[msg.sender] = "Sameera";
        return name[msg.sender];
    }


    function printSender() public view returns(address){
        return msg.sender;
    }
}  
