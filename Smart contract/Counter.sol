// The version of solidity that we want to use
pragma solidity ^0.6.0;

// Create a smart contract
contract Counter {
    // Create vars with a type
    uint count; // this is a unsign interger, it can be negative
    
    // set value with a constructor, public is needed so that it can be run under migration
    constructor() public {
        count = 0;
    }
    
    // Create a function to get the current count value (can only view the count)
    function getCount() public view returns(uint) {
        return count;
    }
    
    // Function that update the count, Writing data to the blockchain (cost gas fee)
    function incrimentCount() public {
        count = count + 1;
    }
    
}