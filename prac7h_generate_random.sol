// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract RandomNumber {
   uint randomNumber = 0;
   function setRandomNumber() public {
        randomNumber = uint (keccak256(abi.encodePacked(msg.sender, randomNumber)));
    }

    function getRandomNumber() public view returns (uint) {
        return randomNumber;
    }
}
