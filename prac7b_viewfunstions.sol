// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract HashContract {
    bytes32 private message;
    function hash1(string memory _msg) public {
        message = keccak256(bytes(_msg));
    }
    function getMsg() public view returns (bytes32){
        return message;
    }
}
