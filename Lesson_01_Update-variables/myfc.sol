// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract myfc {
    // Directly initialized variables
    string public hey = "Subrata Das"; 
    uint256 public num = 10;

    // Variables initialized via constructor
    string public name;
    uint256 public no;

    // Constructor to set initial values during deployment
    constructor(string memory _name, uint256 _no) {
        name = _name;
        no = _no;
    }

    // Variables to be updated via function
    string public name2;
    uint256 public num2;

    // Function to update the variables `name2` and `num2`
    function addinfo(string memory _name2, uint256 _num2) public {
        name2 = _name2;
        num2 = _num2;
    }
}
