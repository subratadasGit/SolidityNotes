
# 📒 lesson2 Smart Contract  

This repository contains the `lesson2` smart contract, which demonstrates key **Solidity features** and **data types**. The code explores value types, reference types, special data types, and basic operations with **structs**, **enums**, **mappings**, and **arrays**.

---

## 🧾 Overview  
This contract is intended as a **learning tool** to help you understand essential **Solidity syntax** and smart contract features, such as:

- **Value Types**: `bool`, `uint`, `int`, `address`, `bytes`
- **Reference Types**: Arrays, Structs, and Mappings  
- **Special Types**: Enums, Strings  
- **Functions** to manipulate dynamic arrays and balances  

---

## 🛠️ Code Summary  

### 1️⃣ **Value Types**  
- **Booleans**:  
  - `isActive`: Default value is `false`.  
  - `isOk`: Initialized to `true`.  

- **Unsigned Integers** (`uint`):  
  - `num1` (uint8): Range `0-255`.  
  - `num2` (uint16): Range `0-65,535`.  
  - `unsignedNumber`: Defaulted to `42` (uint256).

- **Signed Integers** (`int`):  
  - `signedNumber`: Example with `-42`.  
  - `maxInt` and `minInt`: Demonstrate the **maximum** and **minimum** values for `int256`.

- **Address Type**:  
  - `owner`: Defaults to `0x000...000`.  
  - `owner2`: A custom Ethereum address.

- **Bytes Type**:  
  - `fixedBytes`: A fixed-size bytes array with the text `"Hello, Subrata!"`.  
  - `dynamicBytes`: A dynamic byte array initialized with `"Hello!"`.  

---

### 2️⃣ **Reference Types**  
- **Fixed-Size Array**:  
  - `fixedArray`: Contains `[1, 2, 4]`.  

- **Dynamic Array**:  
  - `dynamicArray`: Allows adding elements using the `addElements()` function.

#### `addElements(uint value)`  
Adds an element to the **dynamic array**:  
```solidity
function addElements(uint value) public {
    dynamicArray.push(value);
}
```

- **Struct Example**:  
  - `Person`: Defines a person with `name` and `age`.  
  - Example: `person` initialized with `"Subrata", 22`.  

---

### 3️⃣ **Mapping**  
- **Balances Mapping**:  
  Maps **addresses to uint balances**.

#### `updateBalance(address user, uint amount)`  
Updates the balance of a specific address:  
```solidity
function updateBalance(address user, uint amount) public {
    balances[user] = amount;
}
```

---

### 4️⃣ **Special Data Types**  
- **Enum Status**:  
  Tracks the state of an item using `Pending`, `Shipped`, or `Delivered`.  
  - Default: `Status.Pending`.  

#### Enum Usage Example:  
```solidity
enum Status { Pending, Shipped, Delivered }
Status public currentStatus = Status.Pending;
```

- **String Type**:  
  - `greeting`: A message with `"Hello, Subrata!"`.  

---

## 🚀 Deployment & Testing  

### Using Remix IDE  
1. Open [Remix IDE](https://remix.ethereum.org/).  
2. Paste the code into a new Solidity file (`lesson2.sol`).  
3. Compile the contract using the **Solidity Compiler** tab.  
4. Deploy the contract from the **Deploy & Run** tab.  

---

## 🛠️ Functions Overview  
- **addElements(uint value)**: Adds elements to the dynamic array.  
- **updateBalance(address user, uint amount)**: Updates the balance of a given user.

---

## 📋 Example Usage  

### Add Elements to the Dynamic Array  
```solidity
contractInstance.addElements(10);
contractInstance.addElements(20);
```

### Update a User’s Balance  
```solidity
contractInstance.updateBalance(0x123...789, 100);
```

### Change the Enum Status  
```solidity
contractInstance.currentStatus(); // Outputs: Pending
```

---

## 📝 License  
This project is licensed under the **MIT License** – see the [LICENSE](LICENSE) file for details.

---

## 📧 Contact  
For questions or feedback, reach out at **subratadasgit786@gmail.com**.
