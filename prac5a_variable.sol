// SPDX-License-Identifier: MIT 
pragma solidity 0.8.24;
contract variable_dem{
int256 public sign_num;
bool public isTrue;
address public wallet_address;
uint256[3] public fixarray;
string public message;
enum status {Pending, Approved}
status public currentstatus;
constructor()
{
sign_num=-45;
isTrue=true;
wallet_address=msg.sender;
fixarray=[3,10,8];
currentstatus=status.Pending;
message="K.C college";
}
function update_var() public {
sign_num=-20;
isTrue=false;
wallet_address=msg.sender;
fixarray [2]=37;
currentstatus=status.Approved;
message="K.C College MSc Part 2”.
}
}
