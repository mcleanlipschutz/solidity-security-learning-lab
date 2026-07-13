// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

/// @notice Intentionally vulnerable educational contract. Local practice only.
contract CommunityVault {
    address public immutable manager;
    mapping(address => uint256) public deposits;

    constructor(address manager_) {
        manager = manager_;
    }

    function deposit() external payable {
        deposits[msg.sender] += msg.value;
    }

    function emergencyTransfer(address payable recipient, uint256 amount) external {
        require(tx.origin == manager, "not manager");
        require(address(this).balance >= amount, "insufficient vault balance");

        (bool success,) = recipient.call{ value: amount }("");
        require(success, "transfer failed");
    }
}
