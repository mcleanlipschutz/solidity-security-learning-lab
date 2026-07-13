// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

/// @notice Intentionally vulnerable educational contract. Local practice only.
contract RewardsBank {
    mapping(address => uint256) public balances;

    function deposit() external payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) external {
        require(balances[msg.sender] >= amount, "insufficient balance");

        (bool success,) = msg.sender.call{ value: amount }("");
        require(success, "withdrawal failed");

        balances[msg.sender] -= amount;
    }
}
