//Creating the sender contract
contract Sender
{
 function transferEther() public payable
 {
 require (msg.value>=2 ether,"Insufficient Ether Sent");
 (bool sent,) = payable (0xf8e81D47203A594245E36C48e151709F0C19fBe8).call{value: 1
ether}("Transaction completed!");
 require(sent, "Transaction failed!");
 }
 function getBalance() public view returns(uint){
 return address(this).balance;
 }
}
