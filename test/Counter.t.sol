// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { Counter } from "../src/Counter.sol";
import { TestBase } from "./TestBase.sol";

contract CounterTest is TestBase {
    Counter internal counter;
    address internal constant STUDENT = address(0xBEEF);

    function setUp() public {
        counter = new Counter(1);
    }

    function testInitialState() public view {
        assertEq(counter.owner(), address(this));
        assertEq(counter.number(), 1);
    }

    function testIncrementAndDecrement() public {
        counter.increment();
        assertEq(counter.number(), 2);

        counter.decrement();
        assertEq(counter.number(), 1);
    }

    function testOnlyOwnerCanSetNumber() public {
        vm.prank(STUDENT);
        vm.expectRevert(Counter.Counter__NotOwner.selector);
        counter.setNumber(99);
    }

    function testCannotDecrementBelowZero() public {
        counter.setNumber(0);
        vm.expectRevert(Counter.Counter__AlreadyZero.selector);
        counter.decrement();
    }

    function testFuzzOwnerCanSetAnyNumber(uint256 newNumber) public {
        counter.setNumber(newNumber);
        assertEq(counter.number(), newNumber);
    }
}
