// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

/// @title Counter
/// @notice Secure starter contract used to verify the local Foundry environment.
contract Counter {
    error Counter__NotOwner();
    error Counter__AlreadyZero();

    address public immutable owner;
    uint256 public number;

    event NumberChanged(uint256 indexed previousNumber, uint256 indexed newNumber, address caller);

    constructor(uint256 initialNumber) {
        owner = msg.sender;
        number = initialNumber;
    }

    function increment() external {
        _setNumber(number + 1);
    }

    function decrement() external {
        if (number == 0) revert Counter__AlreadyZero();
        _setNumber(number - 1);
    }

    function setNumber(uint256 newNumber) external {
        if (msg.sender != owner) revert Counter__NotOwner();
        _setNumber(newNumber);
    }

    function _setNumber(uint256 newNumber) internal {
        uint256 previousNumber = number;
        number = newNumber;
        emit NumberChanged(previousNumber, newNumber, msg.sender);
    }
}
