// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

library Util {
    function concat(string memory x,string memory y) public pure returns (string memory) {
        return string.concat(x, y);
    }

    function add(uint x, uint y) public pure returns (uint) {
        return x + y;
    }
}
