pragma solidity ^0.4.4;

contract Mortal {

    address owner;

    function mortal() {
        owner = msg.sender;
    }

    function kill() { 
        if (msg.sender == owner)
            selfdestruct(owner);
    }
}