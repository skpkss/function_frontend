# Calculator App

This repository contains code for a simple calculator application that performs basic mathematical operations (addition, subtraction, multiplication, division) based on user input. The application consists of a Solidity smart contract, an HTML file for the frontend, and a Node.js server file.

## Solidity Contract

The `Simple.sol` file contains a Solidity smart contract that defines the calculator's functionality. It provides functions for addition, subtraction, multiplication, and division operations. The contract ensures that division by zero is not allowed.

## HTML and JavaScript Frontend

The `index.html` file, along with the embedded JavaScript code, provides the user interface for the calculator application. It allows the user to enter two numbers and select an operation. Upon clicking the "Calculate" button, the JavaScript code interacts with the deployed Solidity contract using web3.js to perform the calculation and display the result.

## Node.js Server

The `server.js` file sets up a simple Node.js server using Express. It listens on a specified port (e.g., port 3000) and serves the `index.html` file when the root URL is accessed. Ensure that the required dependencies (`express` and `path`) are installed before running the server.

## Usage

To use the calculator application, follow these steps:

1. Deploy the Solidity contract on an Ethereum network or use a deployed contract address.

2. Update the contract address in the JavaScript code of `index.html` to match the deployed contract's address.

3. Start the Node.js server by running `node server.js` in the command line. The server will start listening on the specified port (e.g., port 3000).

4. Access the calculator application by visiting `http://localhost:3000` in your web browser.

5. Enter two numbers, select an operation, and click the "Calculate" button to see the result.

