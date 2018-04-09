pragma solidity ^0.4.18;

contract Ownable {
    //state variables
    address owner;

    //modifiers
    modifier onlyOwner() {
        require(msg.sender == owner);
        // apply code this modifier is responsible for
        _;
    }

    function Ownable() public {
        owner = msg.sender;
    }
}