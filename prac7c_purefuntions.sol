// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Sol{
    function testAddMod() public pure returns (uint) {
        return addmod(4,5,3);
    }
    function testMulMod() public pure returns (uint) {
        return mulmod(4,5,3);
    }

}
