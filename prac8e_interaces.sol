//SPDX-License-Identifier:GPL-3.0
pragma solidity ^0.5.17;

interface A {
    function getValue() external view returns (uint256);
}
contract B is A {
    function getValue() external view returns (uint256)
    {
        uint256 x = 10;
        uint256 y = 20;
        uint256 result = x*y;
        return result;
    }
}
