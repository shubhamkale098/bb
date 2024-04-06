// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;
contract math{
    uint256 public num1;
    uint256 public num2;
    uint256 public result;
    function setnum (uint256 _num1, uint _num2)public {
   	num1 = _num1;
  	num2 = _num2;
}
function div() public returns (uint) {
    	require (num2!=0, "oops that possible to divide");
   	 result=num1/num2;
   	 return result;
}
function add() public returns (uint){
    	result=num1+num2;
   	 return result;
}
function sub() public returns (uint){
   	 result=num1-num2;
    	return result;
}
function multiply()public returns (uint){
 	   result=num1*num2;
 	   return result;
}
}
