// set version
pragma solidity ^0.6.0;

// contract
contract MyContract {
    // Array
    uint[] public uintArray = [1,2,3]; //return function that uses index to get values
    string[] public stringArray = ["apple","banana","carrot"];
    // empty Array
    string[] public values;
    // two D Array
    uint[][] public Array2D = [[1,2,3], [1,2,3]];
    
    // Add value in empty Array
    function addValue (string memory _value) public {
        // append the new value in the Array
        values.push(_value);
    }
    
    
    // Count elements in Array
    function valueCount() public view returns(uint){
        return values.length;
    }
}