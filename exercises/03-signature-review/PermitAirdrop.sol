// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

/// @notice Intentionally vulnerable educational contract. Local practice only.
contract PermitAirdrop {
    address public immutable signer;

    constructor(address signer_) payable {
        signer = signer_;
    }

    function claim(uint256 amount, uint8 v, bytes32 r, bytes32 s) external {
        bytes32 messageHash = keccak256(abi.encode(msg.sender, amount));
        address recoveredSigner = ecrecover(messageHash, v, r, s);

        require(recoveredSigner == signer, "invalid authorization");
        require(address(this).balance >= amount, "insufficient funds");

        (bool success,) = payable(msg.sender).call{ value: amount }("");
        require(success, "claim failed");
    }
}
