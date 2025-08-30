// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract LowLevelReturnString {
    function main(address a) public returns (string memory) {
        (bool success, bytes memory returnedData) = a.call(abi.encodeWithSignature("baz()"));
        if (success){
            string memory res = abi.decode(returnedData, (string));
            return(res);
        } else {
            return("");
        }
        // call function "baz()" on address a
        // do not use an interface
        // baz() returns a string. Return the string.
        // However, if baz reverts, return an empty string 

        // bonus challenge: use an interface and a high level call to accomplish the same task
    }
}
