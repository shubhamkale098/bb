//SPDX-License-Identifier:GPL-3.0
pragma solidity 0.8.24;
contract Parent{
    uint internal sum;
    function setVal() external{
        uint a=50;
        uint b=20;
        uint c=20;
        sum = a+b+c;
    }
}
contract child is Parent{
    function getVal() external view returns(uint){
        return sum;
    }
}
contract caller{
    child cc = new child();
    function Inher() public returns (uint)
    {
        cc.setVal();
        return cc.getVal();
    }
}
