// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FavoriteColor {
    // Mapping to store each user's favorite color
    mapping(address => string) public favoriteColor;

    // Function to set a user's favorite color
    function setFavoriteColor(string memory color) public {   //Set Favorite Color: Users can call setFavoriteColor("Blue") to save their favorite color in the mapping.
        favoriteColor[msg.sender] = color;
    }

    // Function to get a user's favorite color
    function getFavoriteColor(address user) public view returns (string memory) { //Get Favorite Color: Anyone can call getFavoriteColor(userAddress) to retrieve the favorite color of a specific user.
        return favoriteColor[user];
    }
}
