// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract MultiplyConstant {
    function multiply(uint16 x) public pure returns (uint256 fiveTimesX) {
        return(uint256(x) * 5);
        // TODO: Implement the logic to calculate the five times of x.
    }
}
