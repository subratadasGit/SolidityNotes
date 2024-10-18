# Lesson2 Solidity Contract

## 🔍 Overview

The `Lesson2` contract demonstrates the use of various data types and structures in Solidity, including value types, reference types, mappings, structs, and enums. It serves as an educational example for those looking to understand the fundamentals of Solidity programming.

## Features

- **Value Types**: Demonstrates the use of boolean, unsigned integers, signed integers, address types, and byte types.
- **Reference Types**: Includes fixed-size and dynamic arrays.
- **Structs**: Defines a `Person` struct to store user information.
- **Mappings**: Allows tracking of user balances through a mapping.
- **Enums**: Uses an enum to manage the status of a process (Pending, Shipped, Delivered).
- **Events**: Emits events on state changes for better tracking.
- **Access Control**: Restricts sensitive operations to the contract owner.

## Data Types Used

- **Value Types**:
  - Booleans: `isActive`, `isOk`
  - Unsigned Integers: `num1`, `num2`, `unsignedNumber`
  - Signed Integers: `signedNumber`, `maxInt`, `minInt`
  - Address: `owner`, `owner2`
  - Bytes: `fixedBytes`, `dynamicBytes`

- **Reference Types**:
  - Fixed-size Array: `fixedArray`
  - Dynamic Array: `dynamicArray`

- **Struct**: `Person`
- **Mapping**: `balances`
- **Enum**: `Status`

## Contract Structure

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Lesson2 {
    // Variables, functions, and modifiers are defined here.
}

```Functions
constructor(): Sets the contract deployer as the owner.
addElements(uint value): Adds an element to the dynamic array.
updateBalance(address user, uint amount): Updates the balance of a user. Can only be called by the owner.