
# 📝 Solidity Contract Explanation

This repository contains a **simple Solidity contract** demonstrating multiple ways to **initialize and update state variables**: 
- Direct initialization
- Constructor-based initialization
- Function-based updates

## 🔍 Code Overview

```solidity
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
```

---

## ⚙️ Explanation

### 1. **SPDX-License Identifier & Solidity Version**
- **SPDX-License Identifier**: Ensures the contract's licensing information is clear (in this case, **MIT License**).
- **pragma solidity ^0.8.13;**: Specifies that the contract will work with **Solidity 0.8.13** or higher.

### 2. **Directly Initialized Variables**
```solidity
string public hey = "Subrata Das";
uint256 public num = 10;
```
- These variables are **directly initialized** in the contract.
- Being **public**, they generate **getter functions** automatically and can be accessed externally.

### 3. **Using a Constructor for Initialization**
```solidity
string public name;
uint256 public no;

constructor(string memory _name, uint256 _no) {
    name = _name;
    no = _no;
}
```
- The **constructor** initializes `name` and `no` at the time of **contract deployment**.
- Useful when you want initial values to be set only once.

### 4. **Function-based Updates**
```solidity
string public name2;
uint256 public num2;

function addinfo(string memory _name2, uint256 _num2) public {
    name2 = _name2;
    num2 = _num2;
}
```
- The `addinfo` function allows **updating** `name2` and `num2` **after deployment**.
- **`memory`** keyword ensures the function parameters are temporary and not stored on the blockchain.

---

## 🚀 How to Deploy & Test

1. **Deploy the Contract**:
   - Use **Remix IDE** or any local blockchain environment.
   - If deploying on Remix, select **Solidity 0.8.13+** compiler version.

2. **Initialize Constructor Variables**:
   - During deployment, pass values to `_name` and `_no` to set `name` and `no`.

3. **Call the `addinfo` Function**:
   - Use the function to update `name2` and `num2` dynamically.

---

## 📚 Key Concepts

- **SPDX-License Identifier**: Makes license information clear.
- **Public Variables**: Generates getter functions automatically.
- **Constructor**: Initializes state variables during deployment.
- **Function**: Allows updating state variables after deployment.

---

## 📧 Contact

If you have any questions or suggestions, feel free to reach out at **subratadasgit786@gmail.com**.

---

