pragma solidity ^0.4.24;

import 'zeppelin-solidity/contracts/token/ERC20/StandardToken.sol';

contract TutorialToken is StandardToken {
    string public name = "BTA";
    string public symbol = 'BTA';
    uint8 public decimals = 18;
    uint256 public constant INITIAL_SUPPLY = 2100000000000000000000000;
    address myaddress = 0x5f8056cE526A6b564517C0855EcdECA043b42255;

    constructor() public {
        totalSupply_ = INITIAL_SUPPLY;
        balances[myaddress] = INITIAL_SUPPLY;
        emit Transfer(0x0, myaddress, INITIAL_SUPPLY);
        // balances[msg.sender] = INITIAL_SUPPLY;
         // emit Transfer(0x0, msg.sender, INITIAL_SUPPLY);
    }
}
