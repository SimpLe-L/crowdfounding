// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import "forge-std/Script.sol";
import "../src/CrowdFunding.sol";

contract DeployScript is Script {
    function run() external {
        vm.startBroadcast();

        CrowdFunding crowdFunding = new CrowdFunding();

        vm.stopBroadcast();

        console.log("Contract deployed to address:", address(crowdFunding));
    }
}
