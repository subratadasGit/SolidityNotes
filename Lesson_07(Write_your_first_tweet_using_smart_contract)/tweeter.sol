// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract tweeter {
    mapping(address => string) public tweet;

    function createtweets(string memory _tweet) public {
        tweet[msg.sender] = _tweet;
    }

    function gettweet(address _owner) public view returns (string memory) {
        return tweet[_owner];
    }
      
}
