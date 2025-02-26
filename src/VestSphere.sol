// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

/**
 * @title VestSphere
 * @notice This contract is a TransparentUpgradeableProxy for managing upgradable contract logic.
 * @dev It initializes an upgradeable proxy controlled by a ProxyAdmin.
 */

/// @notice Library imports
import {Context} from "@openzeppelin/contracts/utils/Context.sol";
import {TransparentUpgradeableProxy} from "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";

contract VestSphere is TransparentUpgradeableProxy, Context {
    /**
     * @notice Initializes the upgradeable proxy.
     * @dev Deploys a proxy contract that delegates calls to an implementation contract.
     * @param logic The address of the implementation contract.
     * @param data Optional initialization data to be called on the logic contract.
     */
    constructor(
        address logic,
        bytes memory data
    ) TransparentUpgradeableProxy(logic, _msgSender(), data) {}
}
