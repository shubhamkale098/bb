// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Test
{
    function getsum(uint x, uint y) public pure returns  (uint){
        return x+y;

    }
    function getsum(uint x, uint y, uint z) public pure returns (uint){
        return x+y+z;
    }

    function callTwo() public pure returns (uint){
        return getsum(2,8);
    }

    function callthree() public pure returns (uint){
        return getsum(2,8,20);
    }

}
