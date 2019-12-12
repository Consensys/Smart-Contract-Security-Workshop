// ConsenSys Diligence
// NorthSec 2019
// Montreal, Canada

pragma solidity ^0.5.4;

// Can you have a gazillion balance?

contract challenge1 {
   
    uint256 public balance;
    
    constructor() public {
        balance = 10;
    }
    
    function buy() external payable {
        balance += msg.value;
    }
    
    function burn(uint256 amount) external {
        balance -= amount;
    }

}


//   ___  __   __ _  ____  ____  __ _  ____  _  _  ____ 
//  / __)/  \ (  ( \/ ___)(  __)(  ( \/ ___)( \/ )/ ___)
// ( (__(  O )/    /\___ \ ) _) /    /\___ \ )  / \___ \
//  \___)\__/ \_)__)(____/(____)\_)__)(____/(__/  (____/
//  ____  __  __    __  ___  ____  __ _   ___  ____     
// (    \(  )(  )  (  )/ __)(  __)(  ( \ / __)(  __)    
//  ) D ( )( / (_/\ )(( (_ \ ) _) /    /( (__  ) _)     
// (____/(__)\____/(__)\___/(____)\_)__) \___)(____)    