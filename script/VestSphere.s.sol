// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

/// @notice Library imports
import {Script, console} from "forge-std/Script.sol";
/// @notice Local imports
import {VestSphereImplementation} from "@/VestSphereImpl.sol";

contract CounterScript is Script {
    /// @notice Holds the main contract.
    VestSphereImplementation public sphere;

    function setUp() public {}

    function run() public {
        /// @notice Starting the transaction
        vm.startBroadcast();

        /// @notice Deploying VestSphere implementation contract
        sphere = new VestSphereImplementation();

        /// @notice Ending the transaction
        vm.stopBroadcast();
    }
}
