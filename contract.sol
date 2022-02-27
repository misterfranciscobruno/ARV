// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "@openzeppelin/contracts@4.4.1/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts@4.4.1/utils/Strings.sol";

/// @custom:security-contact security@arv.green
contract ARV is ERC1155 {

    constructor() public ERC1155("ipfs://QmQF2LavAAdDtnBPTi4zy3aJae9mX1Euao3h4q2PSg26pT/{id}.json") {
      uint256 arv;
        for (uint i = 1; i < 1001; i++) {
             arv = uint256(i);
            _mint(msg.sender, arv, 1, "");
        
        }
    }

    function contractURI() public view returns (string memory) {
        return "ipfs://QmQF2LavAAdDtnBPTi4zy3aJae9mX1Euao3h4q2PSg26pT/tokens.json";
    }
    

    function uri(uint256 _tokenId) override public view returns (string memory){
        return string(
            abi.encodePacked(
            "ipfs://QmQF2LavAAdDtnBPTi4zy3aJae9mX1Euao3h4q2PSg26pT/",
            Strings.toString(_tokenId),
            ".json"
            )
        );
    }
}
