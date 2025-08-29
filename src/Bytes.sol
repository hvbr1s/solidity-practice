// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract Bytes {
    uint256[] public arr;
    function main(uint8 z) public pure returns (bytes memory) {
        if (z == 0){
            return "";
        } else {
            bytes memory res = new bytes(z);
            for (uint8 i = 0; i < z;){
                res[i] = bytes1(i); // -> built-in Solidity type that represents a single byte (8 bits)
                unchecked { ++i;}
            }
            return res;   
        }
        // if z = 0, return empty bytes
        // if z = 1, return bytes 0x00
        // if z = 2, return bytes 0x0001
        // if z = 3, return bytes 0x000102
        // if z = 4, return bytes 0x00010203
        // ...
        // etc
   }
}