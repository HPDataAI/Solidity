// Variables
// Data types
// Custom data Structures


// set version
pragma solidity ^0.6.0;

// contract
contract MyContract {
    //String Variables
    string public myString = "Hello, World;";
    bytes32 public myBytes32 = "Hello, World"; // optimize
    
    // State Variables -> stored on the blockchain
    uint public myUint = 1; //uint can have a negative value, default uint256  
    int public myInt = -1; // can have a negative value
    uint256 public myUint256 = 1; // size of the value assigned
    uint8 public myUint256 = 1; // size of the value assigned, optimize performance
    
    // address format
    address public myAddress = 0x5229740420276Ce0347903cd7A1051C89667cB41;

    // Local Variables -> only know in the function, we can't acces var outside of the function
    function getValue() public pure returns(uint){
        uint value = 1;
        return value;
    }
    
    // Own data Structure
    struct MyStruct {
        uint myInt;
        string myString;
    }
    
    MyStruct public Struct1 = MyStruct(1, "Hello, World");
    
    
}