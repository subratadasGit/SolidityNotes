// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// Define a new contract named 'calculator'
contract calculator {
    // State variable to hold the result of calculations, initialized to 0
    uint256 result = 0;

    // Function to add 1 to the result
    function add() public {
        result += 1; // Increment result by 1
    }

    // Function to subtract 1 from the result
    function sub() public {
        result -= 1; // Decrement result by 1
    }

    // Function to multiply the result by 1 (no effective change)
    function mul() public {
        result *= 2; // Multiply result by 2 (change)
    }

    // Getter function to retrieve the current value of result
    function get() public view returns (uint256) {
        return result; // Return the value of result
    }
}
