// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract Account2 {
    address immutable owner;

    constructor(address _owner) payable {
        owner = _owner;
    }

    function withdraw() external {
        require(msg.sender == owner, "Not owner");
        (bool ok, ) = owner.call{value: address(this).balance}("");
        require(ok);
    }
}

//        SimpleContract newContract = new SimpleContract{salt: bytes32(_salt)}(_value);
        // return address(newContract);

contract AccountMaker {
    function makeAccount(address owner) external payable returns (address) {
        // CREATE2 salt conversion: address → uint160 → bytes20 → bytes32
        // 1. uint160(owner) - Convert address to uint160 (both are 160 bits/20 bytes)
        // 2. bytes20(...) - Convert uint160 to bytes20 (explicit type conversion)
        // 3. bytes32(...) - Convert bytes20 to bytes32, padding with 12 zero bytes on the RIGHT
        Account2 newAccount = new Account2{salt: bytes32(bytes20(uint160(owner))), value: msg.value}(owner);
        return address(newAccount);
    }
}
