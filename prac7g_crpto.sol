// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CryptographicFunctions {

    function sha256Hash(string memory _input) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_input));
    }
