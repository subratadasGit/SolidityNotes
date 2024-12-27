
# Solidity Mapping Example 🛠️

In this example, we demonstrate how to use **mappings** in Solidity to manage user balances. Mappings are key-value data structures that are efficient for lookup operations.

---

## Key Features ✨

- **Key-Value Storage**: Allows storing and retrieving balances for each user.
- **Gas Efficient**: Optimized for read and write operations.
- **Default Values**: Automatically initializes to default values for the value type.

---

## Example Contract: UserBalances 💰

Here is an example of a Solidity contract using mappings to manage user balances.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserBalances {
    // Mapping to store balances for each user
    mapping(address => uint256) public balances;

    // Function to deposit funds
    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    // Function to withdraw funds
    function withdraw(uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance!");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

    // Check a user's balance
    function checkBalance(address user) public view returns (uint256) {
        return balances[user];
    }
}
```

---

## How It Works ⚙️

1. **Deposit**: When a user calls `deposit` and sends Ether, their balance increases in the `balances` mapping.
2. **Withdraw**: Users can call `withdraw` to reduce their balance and retrieve Ether.
3. **Check Balance**: Anyone can check the balance of a user via the `checkBalance` function.

---

## Key Notes 📝

- Mappings are **not iterable** (you can't loop through all keys or values).
- Data from mappings is stored on-chain, making it immutable unless explicitly changed.
- Use mappings responsibly, as on-chain storage costs gas!

---

