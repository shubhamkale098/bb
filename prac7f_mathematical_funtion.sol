// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract PrimeNumber {
    function isPrime(uint256 n) public pure returns (string memory) {     
        for (uint256 i = 2; i < n; i++) {
            if (n % i == 0) {  
                return "Not a prime";
            }
        }   
        return "prime";
    }
}
