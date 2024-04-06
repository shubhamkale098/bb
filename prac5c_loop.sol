// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract WhileLoopExample {
    uint256 public counter;
    function increment (uint256 _iterations) public {
        uint256 i = 0;
        while (i < _iterations) {
            counter++;
            i++;
        }
    }
}
