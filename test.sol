pragma solidity ^0.6.6;

contract Test {
    uint256 myNumber;
    bool isActive;
    bytes32 password;
    string name;
    
    string[] names;
    mapping(uint256 => bool) ids;
    
    address ad; // 42 chars hash 
    
    struct Person {
        address id;
        string name;
        uint24 age;
    }
    
    enum Day { Monday, Tuesday }
    
    constructor() public {
        myNumber = 16;
        isActive = true;
        name = 'Chris';
    }
    
    // function name (type name) { private | external | internal | private } { pure | constant | view | payable }
    
    modifier above10(uint256 _newNumber){
        require (_newNumber <=10, "Number is above 10");
        _;
    }
    
    function setNumber (uint256 _newNumber) external payable above10(_newNumber) {
        // msg.value
        // msg.sender 
        // now
        myNumber = _newNumber;
    }
    
    function getNumber () external pure returns (uint256) {
        return 5*5;
    }
    
}


