# function_frontend
The provided code appears to be an HTML document that connects to the MetaMask extension and interacts with a smart contract deployed on the Ethereum blockchain. Below is the README file for the code:

# CONNECTION TO METAMASK

This HTML code provides a user interface for connecting to MetaMask, connecting to a specific smart contract, and reading data from that contract.

index.html
## Prerequisites

To use this code, you need to have the following:

- A web browser with MetaMask extension installed.
- Internet connectivity to load external JavaScript libraries.

## Getting Started

To get started, follow the steps below:

1. Copy the code provided into an HTML file (e.g., `index.html`).
2. Save the file.

## Usage

To use the code, follow the steps below:

1. Open the HTML file in a web browser.
2. Click the "CONNECT TO METAMASK" button to establish a connection with MetaMask.
3. MetaMask will prompt you to authorize the connection. Accept the prompt.
4. Once connected, your Ethereum account address will be displayed in the "Account Area" section.
5. Click the "CONNECT TO CONTRACT" button to connect to the smart contract.
6. The code will interact with the contract deployed at the specified address.
7. The "Contract Area" section will display a message indicating a successful connection to the contract.
8. Click the "GET DATA FROM CONTRACT" button to retrieve data from the smart contract.
9. The retrieved data will be displayed in the "Data Area" section, which consists of the concatenated output of `displayMessage()` and `displayNumber()` functions of the smart contract.

Please note that the code assumes the presence of the MetaMask extension and the availability of the specified smart contract at the given address.

## Libraries and Dependencies

This code relies on the following external JavaScript library:

- Web3.js (v1.2.7-rc.0): The library provides the necessary tools and functions to interact with the Ethereum blockchain and smart contracts.

The library is included via a `<script>` tag with a CDN link to ensure its availability.

```html
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/web3/1.2.7-rc.0/web3.min.js"></script>
```

Make sure you have internet connectivity to load this library from the provided URL.

The provided code is a Solidity smart contract that defines a contract called "DisplayContract" with two public variables `number` (of type `uint`) and `message` (of type `string`). It also includes two public view functions `displayNumber()` and `displayMessage()` that allow retrieving the values of `number` and `message`, respectively.

The contract has a constructor function that initializes the `number` variable with the value 5 and the `message` variable with the string "metacrafter".

Simple.sol
## Prerequisites
To interact with this contract, you will need:
- An Ethereum development environment or platform (e.g., Remix, Truffle, or Hardhat) for compiling and deploying the contract.
- A web3-enabled browser or a tool like MetaMask to interact with the deployed contract.

## Deployment
To deploy the contract, follow these steps:
1. Compile the contract using a Solidity compiler of your choice (0.8.0 or a compatible version).
2. Deploy the compiled contract to an Ethereum network of your choice (e.g., local development network, testnet, or mainnet).

## Interacting with the Contract
Once the contract is deployed, you can interact with its functions using a web3-enabled browser or by writing a JavaScript application that interacts with the contract's ABI (Application Binary Interface).

The following are the contract's available functions:

### displayNumber()
- Function type: View function
- Returns: `uint` (the value of `number`)
- Description: Retrieves the value of `number`.

### displayMessage()
- Function type: View function
- Returns: `string` (the value of `message`)
- Description: Retrieves the value of `message`.

## Examples

Here is an example of how to interact with the deployed contract using web3.js:

```javascript
// Assuming you have web3.js instantiated and connected to an Ethereum provider

// Get the contract's ABI and deployed address
const abi = [...] // ABI of the deployed contract
const contractAddress = "0x..." // Address of the deployed contract

// Instantiate the contract object
const contract = new web3.eth.Contract(abi, contractAddress)

// Call the view functions
contract.methods.displayNumber().call((error, result) => {
  if (!error) {
    console.log("Number:", result)
  } else {
    console.error(error)
  }
})

contract.methods.displayMessage().call((error, result) => {
  if (!error) {
    console.log("Message:", result)
  } else {
    console.error(error)
  }
})
```
server.js
The provided code is a Node.js script that uses the Express framework to create a web server and serve an HTML file. Here's a README for the code:

# Express Web Server

This Node.js script sets up an Express web server that serves an HTML file.

## Prerequisites

To run this script, you need to have the following installed:

- Node.js: Make sure you have Node.js installed on your machine.

## Getting Started

To get started, follow the steps below:

1. Create a new directory for your project.
2. Open a terminal or command prompt and navigate to the project directory.
3. Initialize a new Node.js project by running the following command:
   ```
   npm init -y
   ```
4. Install the Express package by running the following command:
   ```
   npm install express --save
   ```
5. Create a new file (e.g., `server.js`) and copy the provided code into it.
6. Save the file.

## Usage

To use the code, follow the steps below:

1. Open a terminal or command prompt and navigate to the project directory.
2. Run the server by executing the following command:
   ```
   node server.js
   ```
3. The server will start running and listen on port 5000.
4. Open a web browser and visit `http://localhost:5000`.
5. The server will respond by serving the `index.html` file located in the same directory as the `server.js` file.

Please make sure that the `index.html` file exists in the same directory as the `server.js` file.

## Configuration

You can modify the code to serve a different HTML file or change the port number. Here's how you can customize it:

- HTML file: Replace `index.html` in the following line with the path to your desired HTML file:
  ```javascript
  res.sendFile(path.join(__dirname + "/index.html"));
  ```
- Port number: Change the value of the `server.listen` method's argument to your desired port number:
  ```javascript
  const server = app.listen(5000);
  ```
