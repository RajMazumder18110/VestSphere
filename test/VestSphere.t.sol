// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

/// @notice Library imports
import {Test, console} from "forge-std/Test.sol";
/// @notice Local imports
import {VestSphere} from "@/VestSphere.sol";
import {VestSphereImplementation} from "@/VestSphereImpl.sol";

contract VestSphereTest is Test {
    /// @notice Holds the main contract.
    VestSphereImplementation public sphere;

    function setUp() public {
        /// @notice Deploying VestSphere implementation contract
        VestSphereImplementation sphereImpl = new VestSphereImplementation();
        /// @notice Deploying VestSphere proxy
        VestSphere sphereProxy = new VestSphere(
            address(sphereImpl),
            abi.encodeWithSelector(sphereImpl.initialize.selector)
        );
        /// @notice Assign main sphere
        sphere = VestSphereImplementation(address(sphereProxy));
    }

    function test_ImplementationVersion() public view {
        string memory version = sphere.version();
        assertEq(version, "1.0.0");
    }

    function test_VestSphereProxyOwner() public view {
        address owner = sphere.owner();
        assertEq(owner, address(this));
    }
}
