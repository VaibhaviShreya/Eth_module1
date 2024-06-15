// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//  Assessment requirement 
// 1.Contract successfully uses require()
// 2.Contract successfully uses assert()
// 3.Contract successfully uses revert() statements
// Define an error for release conditions not met
contract Assessment{
    mapping(string => uint)public store;
    uint public totalSales;
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
}
