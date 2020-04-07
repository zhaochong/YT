pragma solidity ^0.4.24;

import 'zeppelin-solidity/contracts/token/ERC20/StandardToken.sol';

contract TutorialToken is StandardToken {
    string public name = "Capture The Flag";
    string public symbol = 'CTF';
    uint8 public decimals = 18;
    uint256 public constant INITIAL_SUPPLY = 10000000000000000000000000000;
    address myaddress = 0x71b0D4649E1Afc1742160079F27267237cc5d278;

    constructor() public {
        totalSupply_ = INITIAL_SUPPLY;
        balances[myaddress] = INITIAL_SUPPLY;
        emit Transfer(0x0, myaddress, INITIAL_SUPPLY);
        // balances[msg.sender] = INITIAL_SUPPLY;
         // emit Transfer(0x0, msg.sender, INITIAL_SUPPLY);
    }
}
