// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract LowLevelStruct {
    function main(address a) public returns (uint256 x, uint256 y) {
        (bool success, bytes memory returnData) = a.call(abi.encodeWithSignature("point()"));
        if (success){
            (uint256 pointX, uint256 pointY) = abi.decode(returnData, (uint256, uint256));
            return(pointX, pointY);
        } else {
            revert();
        }

        // call function "point()" on address a
        // do not use an interface
        // point() returns a struct with two uint256 fields, i.e. 
        // struct Point {
        //     uint256 x;
        //     uint256 y;
        // }
        // return the two fields
        // revert if the low level call reverts

        // bonus challenge: use an interface and a high level call to accomplish the same task
    }
}   