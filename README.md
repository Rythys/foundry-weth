# WETH Smart Contract (Foundry)

![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Foundry](https://img.shields.io/badge/Built%20with-Foundry-FFDB1C.svg)
![Solidity](https://img.shields.io/badge/Solidity-%5E0.8.13-blue)

A standard, secure implementation of **Wrapped Ether (WETH)** based on the ERC-20 interface. Developed as part of a university project at **MSU Blockhain** course, this contract allows users to seamlessly wrap and unwrap their Ether in a decentralized manner.

---
## 🚀 On-Chain Deployment

The contract is officially deployed and **fully verified** on the Ethereum Sepolia Testnet. This allows for transparent interaction and source code auditing directly via the block explorer.

| Specification | Details |
| :--- | :--- |
| **Network** | Ethereum Sepolia (Testnet) |
| **Contract Address** | `0x9143646D1b834D742A0E3A56bA42Ce19ba9fC7f5` |
| **Status** | ✅ Verified |
| **Compiler** | Solidity ^0.8.13 |

### 🔍 Explorer
You can view the source code, check the ABI, and monitor transactions on Etherscan:

[![Etherscan Badge](https://img.shields.io/badge/View_on-Etherscan-blue?style=for-the-badge&logo=ethereum)](https://sepolia.etherscan.io/address/0x9143646d1b834d742a0e3a56ba42ce19ba9fc7f5#code)

---

## 🚀 Key Features

* **Mint**: Send native ETH to the contract and receive an equivalent amount of WETH tokens (1:1 ratio).
* **Burn**: Burn your WETH tokens to unlock and receive native ETH back to your wallet.
* **ERC-20 Standard**: Includes all standard functions such as `transfer`, `approve`, and `transferFrom`.
* **Automated Mint**: Supports direct ETH transfers via the `receive()` function.

---

## 🧪 Testing & Verification

The contract has been thoroughly tested and verified.

### Running Tests Locally
To run the automated test suite:
```bash
forge test
