// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// Define a new contract named 'calculator2'
contract calculator2 {
    // State variable to hold the result of calculations, initialized to 0
    uint256 result = 0;

    // Function to add a specified number to the result
    function add(uint256 num) public {
        result += num; // Increment result by the value of num
    }

    // Function to subtract a specified number from the result
    function sub(uint256 num) public {
        result -= num; // Decrement result by the value of num
    }

    // Function to multiply the result by a specified number
    function mul(uint256 num) public {
        result *= num; // Multiply result by the value of num
    }

    // Getter function to retrieve the current value of result
    function get() public view returns (uint256) {
        return result; // Return the value of result
    }
}
