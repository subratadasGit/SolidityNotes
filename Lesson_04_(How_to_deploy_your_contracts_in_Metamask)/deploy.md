# 🚀 Deploying a Smart Contract using Remix IDE and MetaMask

This guide explains how to deploy a Solidity smart contract using Remix IDE and MetaMask. 🧑‍💻

---

## **🛠️ Prerequisites**

1. **🦊 MetaMask Wallet**
   - Install the [MetaMask browser extension](https://metamask.io/). 🌐
   - Set up your wallet or import an existing one. 🔑
   - Ensure you have some test ETH for gas fees (use a faucet for testnets like Sepolia or Goerli). 💰

2. **🖥️ Remix IDE**
   - Open the [Remix IDE](https://remix.ethereum.org/) in your browser. 💻

---

## **📜 Steps to Deploy the Contract**

### **1️⃣ Write the Smart Contract**

1. Open Remix IDE.
2. In the **File Explorer**, create a new file (e.g., `calculator2.sol`). 📂
3. Paste the Solidity code into the file:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract calculator2 {
    uint256 result = 0;

    function add(uint256 num) public {
        result += num;
    }

    function sub() public {
        result -= 1;
    }

    function mul() public {
        result *= 1;
    }

    function get() public view returns (uint256) {
        return result;
    }
}
```

### **2️⃣ Compile the Contract**

1. In Remix, go to the **Solidity Compiler** tab (icon: 🛠️).
2. Select the Solidity version matching your contract's `pragma` statement (e.g., `0.8.13`). ⚙️
3. Click **Compile calculator2.sol**. ✅
4. Ensure there are no compilation errors. 🛡️

### **3️⃣ Connect MetaMask to Remix**

1. Switch to the **Deploy & Run Transactions** tab (icon: ⚙️).
2. Under "Environment," select **Injected Provider - MetaMask**. 🦊
   - MetaMask will prompt you to connect. Approve the connection. ✅
   - Ensure your MetaMask wallet is set to a testnet (e.g., Sepolia or Goerli). 🌍

### **4️⃣ Deploy the Contract**

1. Ensure the **Contract** dropdown in Remix is set to your contract (e.g., `calculator2`). 📜
2. Click **Deploy**. 🚀
3. MetaMask will prompt you to confirm the transaction. Approve it. 🔒
4. Wait for the transaction to be mined. The deployed contract's address will appear under "Deployed Contracts" in Remix. 📬

### **5️⃣ Interact with the Contract**

1. Under "Deployed Contracts," expand your contract's section. 📂
2. Use the buttons to interact with the contract:
   - Call `add`, `sub`, `mul` to modify the `result`. ➕➖✖️
   - Call `get` to view the current value of `result`. 📊
3. MetaMask will prompt you to approve any state-changing transactions. 🔐

---

## **🔍 Testing the Contract**

1. Perform operations like adding or subtracting numbers. 🔢
2. Verify the `result` updates correctly using the `get` function. 📈

---

## **⚠️ Troubleshooting**

- **Error: "Gas Limit Exceeded"**
  - Ensure you have sufficient test ETH in your wallet. 🪙

- **Contract Not Visible in MetaMask**
  - Verify you are using the correct network (e.g., Sepolia). 🌐
  - Double-check the deployment transaction in Remix. 🔄

---

## **📚 Additional Resources**

- [MetaMask Documentation](https://metamask.io/faqs.html) 🦊
- [Remix IDE Documentation](https://remix-ide.readthedocs.io/en/latest/) 🛠️
- [Faucets for Test ETH](https://faucets.chain.link/) 💧

---
