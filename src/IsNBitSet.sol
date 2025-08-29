// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract IsNBitSet {
    function main(bytes32 x, uint256 n) public pure returns (bool) {
        return uint256(x) & (1 << n) != 0; // -> mask to check nth bit is not 0
        // return true if the nth bit is set
        // 000....0001 with n = 0 returns true
        // 000....0001 with n = 1 returns false
        // 000....0010 with n = 1 returns true
    }
}