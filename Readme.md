# Project Title

Simple Error Handling in Solidity Smart Contract using supermarket problem 

## Description
The Assessment smart contract is designed to manage a simple store where items can be added and purchased. This contract demonstrates the usage of Solidity's error handling functions: require(), assert(), and revert(). Additionally, it maintains a mapping of available items and tracks the total sales value.

## Getting Started

### Installing
Installing
To deploy and interact with this contract, you will need:

1.A development environment like Remix IDE or a local setup using Hardhat or Truffle.
2. A browser extension like Phantom for interacting with the Ethereum network.


### Executing program

Follow these steps to deploy and interact with the contract:

1.Open Remix IDE:

a.Navigate to Remix IDE.
b.Create a new file and paste the contract code provided.

2.Compile the Contract:

a.Select the appropriate Solidity compiler version (0.8.0 or higher).
b.Compile the contract by clicking the "Compile" button.

3.Deploy the Contract:

a.Go to the "Deploy & Run Transactions" tab.
b.Select the environment (e.g., JavaScript VM for local testing or Injected Web3 for using MetaMask).
c.Deploy the contract by clicking the "Deploy" button.

4.Interact with the Contract:

a.Once deployed, the contract's functions will be available in the Remix interface.
b.Use the input fields to call functions like  addItems ,buyItem and saleDetails 

```
function addItem(string memory items , uint numberItems)public {
        require(numberItems > 0,"Number of items should be grater than 0");
        store[items]+=numberItems;
    }  
    function buyItem(string memory items, uint numberItems)public payable{
        uint costPerItem =0.00000001 ether;
        uint totalCost=costPerItem*numberItems;
        totalSales +=totalCost;
        store[items]-=numberItems;
        assert(store[items]>=0);
    }
    function saleDetails() view public{
        if(totalSales==0){
            revert("No items has been sold yet");
        }
    }

```

## Help

For common issues, consider the following:

1.Compilation Errors: Ensure you are using the correct Solidity version (0.8.0 or higher).
2.Deployment Issues: Check your network configuration and ensure you have sufficient funds in your MetaMask account for gas fees.
3.Function Errors: Review the function requirements and error messages. 

## Authors

Contributors names and contact info

Vaibhavi shreya 
[vaibhavishreya2004@gmail.com]


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
