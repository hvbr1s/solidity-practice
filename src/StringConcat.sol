// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract StringConcat {
    function concat(string memory a, string memory b) public pure returns (string memory) {
        return(string.concat(a,b));
        // return the concatenation of a and b
        // relevant docs -> https://docs.soliditylang.org/en/v0.8.28/types.html#bytes-and-string-as-arrays
    }
}