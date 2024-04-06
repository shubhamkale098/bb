//SPDX-License-Identifier:GPL-3.0
pragma solidity ^0.5.17;

contract A {
    function getValue() public view returns (uint256);
}
contract B is A {
    function getValue() public view returns (uint256)
    {
        uint256 x = 10;
        uint256 y = 20;
        uint256 result = x*y;
        return result;
    }
}
