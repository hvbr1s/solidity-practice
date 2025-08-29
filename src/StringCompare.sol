// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract StringCompare {
    function compare(string memory a, string memory b) public pure returns (bool) {
        return keccak256(abi.encodePacked(a)) == keccak256(abi.encodePacked(b));
        // compare two strings
        // return true if they are equal
        // return false if they are not equal
        // relevant docs -> https://docs.soliditylang.org/en/v0.8.28/types.html#bytes-and-string-as-arrays
    }
}
