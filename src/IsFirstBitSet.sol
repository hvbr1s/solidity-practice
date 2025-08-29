// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract IsFirstBitSet {
    function main(bytes32 x) public pure returns (bool) {
        return uint256(x) & 1 == 1; // casts the bytes as a uint256 and check the LSB -> 1 means it's set
        // return true if the first bit is set
        // for example 0x000....0001 returns true
        // for example 0x000....0010 returns false
    }
}
