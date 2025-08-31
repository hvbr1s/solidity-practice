// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

library StorageSetLib {
    struct S {
        uint256 x;
    }

    function increment(S storage self) public returns (bool) {
        self.x = self.x +1;
        return(true);
    }
}


contract StorageSet {
    StorageSetLib.S public s;

    using StorageSetLib for StorageSetLib.S;

    function main() public {
        bool ok = s.increment();
        // call s.increment() here
        // s.increment();
    }
}