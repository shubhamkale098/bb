//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;
contract Test{
    function TakeLoan(uint256) external payable {
         new GiveLoan (350);
    }
}
contract GiveLoan{
    uint public money;
    constructor (uint256 _amt) {
        money=_amt;
    }
}