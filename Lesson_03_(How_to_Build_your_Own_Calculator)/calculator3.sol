// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract calculator3 {
     uint256 result = 0;

    // Function to add a specified number to the result
    function add(uint256 a , uint256 b ) public {
        result = a+b; // Increment result by the value of num
    }

    // Function to subtract a specified number from the result
    function sub(uint256 a , uint256 b) public {
        result = a - b ; // Decrement result by the value of num
    }

    // Function to multiply the result by a specified number
    function mul(uint256 a , uint256 b) public {
        result = a * b; // Multiply result by the value of num
    }

    function div(uint256 a , uint256 b) public {
        result = a / b; // Multiply result by the value of num
    }

     function mod(uint256 a , uint256 b) public {
        result = a % b; // Multiply result by the value of num
    }
    // Getter function to retrieve the current value of result
    function get() public view returns (uint256) {
        return result; // Return the value of result
    }
}