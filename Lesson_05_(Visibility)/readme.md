# Solidity Visibility Specifiers 👀

Visibility specifiers in Solidity determine the accessibility of functions and state variables. There are four visibility levels:

1. **Public** 🟢
2. **Private** 🔒
3. **Internal** 🛠️
4. **External** 🌐

Each level provides different access rules. Let's dive into the details with examples! 🚀

---

## 1. **Public** 🟢

- Accessible **within the contract**, **derived contracts**, and **externally**.
- Functions and state variables marked `public` are visible everywhere.

### Example:
```solidity
pragma solidity ^0.8.0;

contract ExamplePublic {
    uint256 public myNumber = 42; // Public variable

    function setNumber(uint256 _number) public { // Public function
        myNumber = _number;
    }
}
```
- **Explanation:**
  - The `myNumber` variable and `setNumber` function can be accessed both inside and outside the contract.

---

## 2. **Private** 🔒

- Accessible **only within the contract** where it is defined.
- Not accessible in derived contracts or externally.

### Example:
```solidity
contract ExamplePrivate {
    uint256 private secretNumber = 7; // Private variable

    function setSecret(uint256 _secret) private {
        secretNumber = _secret;
    }

    function revealSecret() public view returns (uint256) {
        return secretNumber;
    }
}
```
- **Explanation:**
  - The `secretNumber` and `setSecret` function can only be accessed inside the `ExamplePrivate` contract.

---

## 3. **Internal** 🛠️

- Accessible **within the contract** and **derived contracts**.
- Not accessible externally.

### Example:
```solidity
contract Parent {
    uint256 internal inheritedNumber = 100; // Internal variable

    function updateNumber(uint256 _number) internal {
        inheritedNumber = _number;
    }
}

contract Child is Parent {
    function useParentFunction() public {
        updateNumber(200); // Accessible in derived contract
    }
}
```
- **Explanation:**
  - The `inheritedNumber` variable and `updateNumber` function are accessible in the `Parent` and `Child` contracts but not externally.

---

## 4. **External** 🌐

- Accessible **only from outside the contract**.
- Cannot be called internally unless using `this` keyword.

### Example:
```solidity
contract ExampleExternal {
    function externalFunction() external pure returns (string memory) {
        return "Hello from external function!";
    }

    function callExternal() public view returns (string memory) {
        return this.externalFunction(); // Calling externally using `this`
    }
}
```
- **Explanation:**
  - The `externalFunction` can only be called externally or with the `this` keyword inside the contract.

---

### Quick Comparison Table 📊
| Visibility | Accessible Within Contract | Accessible in Derived Contracts | Accessible Externally |
|------------|-----------------------------|----------------------------------|------------------------|
| Public     | ✅                          | ✅                               | ✅                     |
| Private    | ✅                          | ❌                               | ❌                     |
| Internal   | ✅                          | ✅                               | ❌                     |
| External   | ❌                          | ❌                               | ✅                     |

---


