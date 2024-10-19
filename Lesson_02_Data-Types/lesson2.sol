// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract lesson2 {
    // 1. Value Types
    bool public isActive;  // Default: false
    bool public isOk = true;

    // Unsigned Integers (uint)
    uint8 public num1;      // 0 to 255 (2^8 - 1)
    uint16 public num2;     // 0 to 65,535 (2^16 - 1)
    uint256 public unsignedNumber = 42;  // Default is uint256 (0 to 2^256 - 1)

    // Signed Integers (int)
    int256 public signedNumber = -42;    // Range: -2^255 to 2^255 - 1
    int256 public maxInt = type(int256).max;
    int256 public minInt = type(int256).min;

    // Address Type
    address public owner;  // Default: 0x0000000000000000000000000000000000000000
    address public owner2 = 0x1010000000000000000000000000000000000000;

    // Bytes Types
    bytes32 public fixedBytes = "Hello, Subrata!";
    bytes public dynamicBytes = "Hello!";

    // 2. Reference Types
    uint[3] public fixedArray = [1, 2, 4];  // Fixed-size Array

    uint[] public dynamicArray;  // Dynamic Array
    function addElements(uint value) public {
        dynamicArray.push(value);  // Add element to the array
    }

    // Struct Example
    struct Person {
        string name;
        uint age;
    }

    Person public person = Person("Subrata", 22);

    // Mapping Example
    mapping(address => uint) public balances;

    function updateBalance(address user, uint amount) public {
        balances[user] = amount;  // Update the balance for a user
    }

    // 3. Special Data Types
    enum Status { Pending, Shipped, Delivered }
    Status public currentStatus = Status.Pending;  // Enum to track status

    // String Type
    string public greeting = "Hello, Subrata!";
}
