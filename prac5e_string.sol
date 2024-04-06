// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Hello{
    string public greet;
    constructor(){
        greet="Hello, MScIT";
    }
    function setGreet(string memory _newgreet) public{
        greet=_newgreet;
    }
}
