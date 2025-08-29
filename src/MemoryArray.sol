// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract MemoryArray {
    uint256[] public arr; // -> init array 
    function main(uint8 a) public returns (uint256[] memory) {
        for (uint256 i; i < a;) {
            arr.push(i);
            unchecked { ++i;}
        } // loops until we've populated the array
        return arr;
        // return an array that goes from 0 to a
        // for example, if a is 3, return [0, 1, 2]
    }
}
