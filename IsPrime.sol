//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract IsPrime {
    function isPrime(uint256 x) public pure returns (bool) {
        bool p = true;
        assembly {
            for { let i := 2} lt(i, x) { i := add(i, 1)} 
            {
                if iszero(mod(x, i)) {
                    p := 0
                    break
                }
            }
        }
        return p;
    }
}
