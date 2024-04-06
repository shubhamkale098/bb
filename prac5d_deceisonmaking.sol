// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Decision_Making{
    uint256 public num;

    function setNumber(uint256 _num) public {
        num = _num;
    }
    function check() public view returns (string memory)  {
         if(num % 2 == 0) {
            return string("The number entered is even.");
        }
            return string(abi.encodePacked("The number entered is odd."));
    }
   
}
