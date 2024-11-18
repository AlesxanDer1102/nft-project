// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {MoodNft} from "../src/MoodNft.sol";
import {Base64} from "@openzeppelin/contracts/utils/Base64.sol";

contract DeployMoodNft is Script {
    function run() external returns (MoodNft) {}

    function svgToImageURI(
        string memory svg
    ) public pure returns (string memory) {
        string memory baseUrl = "data:image/svg+xml;base64,";
        string memory base64EncodedSvg = Base64.encode(
            bytes(string(abi.encodePacked(svg)))
        );
        return string(abi.encodePacked(baseUrl, base64EncodedSvg));
    }
}
