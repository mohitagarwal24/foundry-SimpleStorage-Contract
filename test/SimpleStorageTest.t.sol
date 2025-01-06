// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract SimpleStorageTest is Test {
    SimpleStorage simpleStorage;

    function setUp() external {
        simpleStorage = new SimpleStorage();
    }

    function testStore() public {
        simpleStorage.store(42);
        uint256 result = simpleStorage.retrieve();
        assertEq(42, result);
    }
}
