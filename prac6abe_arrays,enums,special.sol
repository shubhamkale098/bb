// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;


contract Variables {
    int256 public signNum;
    bool public isTrue;
    address public walletAddress;
    uint256[3] public fixArray;
    string public message;
    enum STATUS { pending, approved } // return index of enums instead of actual value, starting from 0.
    STATUS public currentStatus;


    constructor() {
        signNum = -45;
        isTrue = true;
        walletAddress = msg.sender; // wallet address
        fixArray = [1, 2, 3];
        currentStatus = STATUS.pending; // return index of emum
        message = "Initial message!";
    }


    function updateVariables() public {
        signNum = -20;
        isTrue = false;
        walletAddress = msg.sender; // wallet address
        fixArray[2] = 4; // update value of 3rd element in an array
        currentStatus = STATUS.approved; // return index of emum
        message = "Updated message!";
    }
}
