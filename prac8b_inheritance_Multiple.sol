//SPDX-License-Identifier:GPL-3.0
pragma solidity>= 0.8.2<0.9.0;

contract A{
    string internal x;
    function setA() external{
        x = "Multiple inheritance";
    }
}
contract B{
    uint256 internal pow;

    function setB() external{
        uint256 a = 20;
        uint256 b = 2;
        pow = a**b;
    }
}
contract C is A,B{
    function getStr() public view returns (string memory){
        return x;
    }
    function getPow() external view returns (uint256){
        return pow;
    }
}
contract caller{
    C contractC = new C();
    function testInheritance() public returns(string memory, uint256){
        contractC.setA();
        contractC.setB();
        return (contractC.getStr(),contractC.getPow());
    }
}
