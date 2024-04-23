# Functions-and-Errors

## Student Database Smart Contract

## Overview
This Solidity smart contract, `StudentDatabase.sol`, provides functionality to create, update, delete, and view student profiles on the blockchain. Each student profile consists of a name, age, and a technology stack.

## Contract Details
- **Solidity Version**: ^0.8.0
- **License**: MIT

## Contract Functions
1. **createStudentProfile**: Allows users to create a new student profile by providing their name, age, and technology stack.
2. **updateProfile**: Allows users to update their existing student profile with a new name, age, and technology stack.
3. **deleteProfile**: Allows users to delete their existing student profile.
4. **viewProfile**: Allows users to view their own student profile.

## Custom Error Handling
The contract implements custom error handling to ensure that operations are performed safely. It includes custom errors for situations such as when a profile does not exist.

## Testing
The contract includes functions `assertExample` and `revertExample` to demonstrate assertion and revert functionality, respectively. These can be used for testing and understanding the behavior of the contract.

## Usage
1. Deploy the contract to a compatible Ethereum Virtual Machine (EVM) environment.
2. Interact with the contract using a blockchain client or development framework like Remix, Hardhat, or Truffle.
3. Utilize the provided functions to manage student profiles on the blockchain.

## License
This project is licensed under the terms of the MIT license.

## Disclaimer
This smart contract is provided as-is, without any warranty. Use at your own risk.
- - -
