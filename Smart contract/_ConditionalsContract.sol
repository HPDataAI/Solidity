// set version
pragma solidity ^0.6.0;

// contract if and else statements
contract MyContract {
    // uint array
    uint[] public numbers = [1,2,3,4,5,6,7,8,9,10];
    
    // owner contract by deploying
    address public owner;
    
    // set owner address
    constructor() public {
        owner = msg.sender;
    }
    
    function countEvenNumbers() public view returns (uint){
        uint count = 0;
        // loop example 1
        for(uint i = 0; i < numbers.length; i++){
            // Runs code
            if(isEvenNumber(numbers[i])){
                count ++;
            }
        }
        
        // Return count
        return count;
        
    }
    
    function isEvenNumber(uint _number) public view returns(bool){
        // Check remainders
        if(_number % 2 == 0){
            return true;
        } else{
            return false;
        }
    }
    
    
    // Check owner
    function isOwner() public view returns(bool) {
        // long condition
        if(msg.sender == owner){
            return true;
        }else{
            return false;
        }
        
        // short condition
        return(msg.sender == owner);
    }
}