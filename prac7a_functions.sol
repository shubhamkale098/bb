// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Function {
    uint256 public number;

    function setNumber(uint256 _newNumber) public {
        number = _newNumber;
    }

    function doubleNumber() public {
        number *= 2;
    }
}
