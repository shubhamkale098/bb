// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;
import "util.sol";
contract ImportHere {
    using Util for uint;
    using Util for string;
    function sum(uint a, uint b) public pure returns (uint) {
        return a.add(b);
    }
    function concat(string memory x,string memory y) public pure returns (string memory) {
        return x.concat(y);
    }
}
