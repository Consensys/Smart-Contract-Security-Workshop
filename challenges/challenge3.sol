// ConsenSys Diligence
// NorthSec 2019
// Montreal, Canada

pragma solidity ^0.5.4;

// Lottery using block hash as source of randomness
// Deployed on Ropsten: 0x70707c3163575fb0eba9f291f75ff0742cb18386


contract challenge3 {
   
    uint256 public answer;
    
    constructor () payable public {
        require(msg.value == 1 ether);
    }
    
    function lottery(uint256 n) payable public {
        require(msg.value > 0); //buy ticket, it should be more than 0 
        answer = uint256(keccak256(abi.encode(blockhash(block.number - 1))));
        if (n == answer) {
            msg.sender.transfer(1337);
        }
    }
}



//   ___                           __           
//   / __\___  _ __  ___  ___ _ __ / _\_   _ ___ 
//  / /  / _ \| '_ \/ __|/ _ \ '_ \\ \| | | / __|
// / /__| (_) | | | \__ \  __/ | | |\ \ |_| \__ \
// \____/\___/|_| |_|___/\___|_| |_\__/\__, |___/
//                                     |___/     
//     ___ _ _ _                                 
//   /   (_) (_) __ _  ___ _ __   ___ ___       
//   / /\ / | | |/ _` |/ _ \ '_ \ / __/ _ \      
//  / /_//| | | | (_| |  __/ | | | (_|  __/      
// /___,' |_|_|_|\__, |\___|_| |_|\___\___|      
//               |___/                       

