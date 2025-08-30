// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract LowLevelArgs1 {
    function main(address a, uint256 x) public {
        (bool success, ) = a.call(abi.encodeWithSignature("rare(uint256)", x));
        require(success, "call reverted!");
        // call rare(x) using a low-level call
        // if the low level call reverts, revert also
        // bonus challenge: use an interface and a high level call to accomplish the same task
    }
}