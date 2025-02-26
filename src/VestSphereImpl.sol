// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

/// @notice Library imports
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

/// @notice Local imports

contract VestSphereImplementation is
    Initializable,
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable
{
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize() public initializer {
        __ReentrancyGuard_init();
        __Ownable_init(_msgSender());
    }

    /** @notice READ METHODS */

    /**
     * @notice Returns the current version of the contract.
     * @dev This is a pure function that always returns a static version string.
     * @return The version string of the contract.
     */
    function version() public pure returns (string memory) {
        return "1.0.0";
    }
}
