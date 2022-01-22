// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "@openzeppelin/contracts@4.4.1/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts@4.4.1/utils/Strings.sol";

/// @custom:security-contact security@arv.green
contract ARV is ERC1155 {

    constructor() public ERC1155("https://api.arv.green/tokens/{id}.json") {
      uint256 arv;
        for (uint i = 0; i < 5000; i++) {
             arv = uint256(i);
            _mint(msg.sender, arv, 1, "");
        
        }
    }

    function contractURI() public view returns (string memory) {
        return "https://api.arv.green/tokens.json";
    }
    

    function uri(uint256 _tokenId) override public view returns (string memory){
        return string(
            abi.encodePacked(
            "https://api.arv.green/tokens/",
            Strings.toString(_tokenId),
            ".json"
            )
        );
    }
}
