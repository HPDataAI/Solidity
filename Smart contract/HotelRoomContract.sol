// set version
pragma solidity ^0.6.0;

// Features //
    // ether - pay smart contracts
    // modifiers
    // Visibility
    // Events
    // Enums

contract HotelRoom {
    // payment address
    address payable public owner;
    
    // Hotel room status
    enum Statuses { Vacant, Occupied } Statuses currentStatus;
    
    // create an Event
    event Occupy(address _occupant, uint _value);
    
    // set the deployer as owner
    constructor() public{
        owner = msg.sender;
        currentStatus = Statuses.Vacant;
    }
    
    modifier onlyWhileVacant {
        // Check room status    
        require(currentStatus == Statuses.Vacant, "Currently occupied.");
        _; // execute the function button
    }
    
    // Price modifier
    modifier costs (uint _amount){
        // Check the price
        require(msg.value >= _amount, "Not enough Ether provided");
        _;
    }

    // book room by a payment, then this will be executed
    receive() external payable onlyWhileVacant costs(2 ether) {
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        
        // emit the event
        emit Occupy(msg.sender, msg.value);
    }
    
    
    
}