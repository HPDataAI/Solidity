// set version
pragma solidity ^0.6.0;

contract Ownable{
    address owner;
    
    constructor() public{
        owner = msg.sender;
    }
    
    // only owner
    modifier onlyOwner(){
        require(msg.sender == owner, "must be owner");
        _;
    }
    
}

contract SecretVault{
    string secret;
    
    constructor(string memory _secret) public{
        secret = _secret;
    }
    
    function getSecret() public view returns(string memory) {
        return secret;
    }
}

// factory
// contract with a function that only the owner can call
contract MyContract is Ownable{
    // add SecretVault
    address secretVault;
    
    constructor(string memory _secret) public{
        SecretVault _secretVault = new SecretVault(_secret);
        secretVault = address(_secretVault);
        super; // call constructor from the ownable contract
    }
    
    function getSecret() public view onlyOwner returns(string memory) {
        SecretVault _secretVault = SecretVault(secretVault);
        return _secretVault.getSecret();
    }
}