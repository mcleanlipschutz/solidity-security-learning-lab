// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

/// @notice Intentionally vulnerable educational contract. Local practice only.
contract SharePool {
    mapping(address => uint256) public shares;
    uint256 public totalShares;

    function deposit() external payable returns (uint256 mintedShares) {
        require(msg.value > 0, "zero deposit");

        if (totalShares == 0) {
            mintedShares = msg.value;
        } else {
            mintedShares = (msg.value * totalShares) / address(this).balance;
        }

        shares[msg.sender] += mintedShares;
        totalShares += mintedShares;
    }

    function withdraw(uint256 shareAmount) external {
        require(shares[msg.sender] >= shareAmount, "insufficient shares");

        uint256 assets = (shareAmount * address(this).balance) / totalShares;
        shares[msg.sender] -= shareAmount;
        totalShares -= shareAmount;

        (bool success,) = payable(msg.sender).call{ value: assets }("");
        require(success, "withdrawal failed");
    }

    receive() external payable { }
}
