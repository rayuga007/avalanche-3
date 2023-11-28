# MYToken - ERC-20 Token Contract

## Overview

MYToken is an ERC-20 compliant token contract developed using the Solidity programming language. This contract allows for the creation, minting, burning, and transfer of tokens. It is based on the OpenZeppelin ERC-20 implementation and includes additional functionalities.

## Features

1. **Minting Tokens:**
   - Only the owner (Admin) can mint new tokens.
   - The `mintTokens` function is used to create and add tokens to the total supply.

2. **Burning Tokens:**
   - Any account can burn a specified number of tokens, reducing the total supply.
   - The `burnTokens` function facilitates this burning process.

3. **Transferring Tokens:**
   - Any account can transfer tokens to another account.
   - The `transferTokens` function ensures a secure transfer of tokens between accounts.

4. **Events:**
   - The contract emits events for important actions, such as minting (`TokensMinted`), burning (`TokensBurned`), and transferring (`TokensTransferred`).

## Usage

1. **Deployment:**
   - Deploy the contract to the Ethereum blockchain. The contract is initialized with the name and symbol provided during deployment, and the initial supply is set to 1000 tokens.

2. **Owner Actions:**
   - The owner (Admin) can mint new tokens to a specified address using the `mintTokens` function.
   - The owner can also transfer ownership by modifying the `Admin` address.

3. **Token Operations:**
   - Any account can burn tokens using the `burnTokens` function.
   - Token holders can transfer tokens to other accounts using the `transferTokens` function.

4. **Events:**
   - Monitor the emitted events (`TokensMinted`, `TokensBurned`, `TokensTransferred`) for transparency and tracking token-related activities.

## Security Considerations

1. **Ownership:**
   - Ensure that the `Admin` address is securely managed, as it has special privileges such as minting new tokens.

2. **Function Parameters:**
   - When interacting with the contract, provide valid and appropriate parameters to avoid errors.

3. **Gas Costs:**
   - Be aware of gas costs associated with token operations, especially for functions like minting and burning.

## Development Environment

- **Solidity Version:** 0.8.18
- **Dependencies:** OpenZeppelin ERC-20 Contracts

## License

This contract is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Author

Faizan khan

rehan786khan2011@gmail.com
