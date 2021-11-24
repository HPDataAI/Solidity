// set version
pragma solidity ^0.6.0;

contract MyContract {
    // Mappings
    mapping(uint => string) public names; // like a database
    
    // Book mapping
    mapping(uint => Book) public books;
    
    // nested mapping
    mapping(address => mapping(uint => Book)) public myBooks;
    
    // Books
    struct Book {
        string title;
        string author;
    }
    
    // add names
    constructor() public{
        names[0] = "Hilario";
        names[2] = "Pedro";
        names[3] = "Bruce";
        names[4] = "Carl";
    }
    
    // add Books
    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);
    }
    
    
    // Add my Book
    function addMyBook(uint _id, string memory _title, string memory _author) public {
        // solidity has a message sender
        myBooks[msg.sender][_id] = Book(_title, _author);
    }
    
}