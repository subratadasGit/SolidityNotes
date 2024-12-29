// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayExamples {
    // Fixed-size array
    uint[3] public fixedArray = [10, 20, 30];
    
    // Dynamic array
    uint[] public dynamicArray;
    
    // Struct with array
    struct Person {
        string name;
        uint age;
    }
    Person[] public people;

    // Add element to dynamic array
    function addToDynamicArray(uint _value) public {
        dynamicArray.push(_value); // 🌟 Add a value
    }

    // Remove last element from dynamic array
    function removeLastElement() public {
        require(dynamicArray.length > 0, "Array is empty ❌");
        dynamicArray.pop(); // ♻️ Remove the last element
    }

    // Get dynamic array length
    function getDynamicArrayLength() public view returns (uint) {
        return dynamicArray.length; // 🔍 Get the length
    }

    // Add a new person to people array
    function addPerson(string memory _name, uint _age) public {
        people.push(Person(_name, _age)); // 🧑‍🤝‍🧑 Add a person
    }

    // Sum of fixed array elements
    function sumFixedArray() public view returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < fixedArray.length; i++) {
            sum += fixedArray[i]; // ➕ Calculate the sum
        }
        return sum;
    }
}
