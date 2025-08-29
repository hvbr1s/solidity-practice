// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract StringIndex {
    function main(string memory str, uint256 index) public pure returns (string memory) {
        bytes memory stringTurnedIntoBytes = bytes(str);
        bytes memory oneElementByteArray = new bytes(1);
        oneElementByteArray[0] = stringTurnedIntoBytes[index];
        return string(oneElementByteArray);
        // return the character at index in str
        // assume str only consists of ascii characters
    } 
}