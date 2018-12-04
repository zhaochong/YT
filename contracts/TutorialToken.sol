pragma solidity ^0.4.24;

import 'zeppelin-solidity/contracts/token/ERC20/StandardToken.sol';

contract TutorialToken is StandardToken {
    string public name = "Yi Token";
    string public symbol = 'YT';
    uint8 public decimals = 18;
    uint256 public constant INITIAL_SUPPLY = 110000000000000000000000000;


    constructor() public {
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
        emit Transfer(0x0, msg.sender, INITIAL_SUPPLY);
    }
}
