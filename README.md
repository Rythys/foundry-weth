# 🪙 WETH Smart Contract (Foundry)

![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Foundry](https://img.shields.io/badge/Built%20with-Foundry-FFDB1C.svg)
![Solidity](https://img.shields.io/badge/Solidity-%5E0.8.13-blue)

A standard, secure implementation of **Wrapped Ether (WETH)** based on the ERC-20 interface. Developed as part of a university project at **MSU Mech-Mat**, this contract allows users to seamlessly wrap and unwrap their Ether in a decentralized manner.

---

## 🚀 Key Features

* **Minting (`deposit`)**: Send native ETH to the contract and receive an equivalent amount of WETH tokens (1:1 ratio).
* **Burning (`withdraw`)**: Burn your WETH tokens to unlock and receive native ETH back to your wallet.
* **ERC-20 Standard**: Includes all standard functions such as `transfer`, `approve`, and `transferFrom`.
* **Automated Minting**: Supports direct ETH transfers via the `receive()` function.

---

## 🏗 Technical Stack

* **Language**: Solidity ^0.8.13
* **Framework**: [Foundry](https://book.getfoundry.sh/)
* **Environment**: WSL (Ubuntu)
* **Network**: Ethereum Sepolia Testnet

---

## 🧪 Testing & Verification

The contract has been thoroughly tested and verified.

### Running Tests Locally
To run the automated test suite:
```bash
forge test
