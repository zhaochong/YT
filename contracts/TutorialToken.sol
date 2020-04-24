pragma solidity ^0.4.24;

import 'zeppelin-solidity/contracts/token/ERC20/StandardToken.sol';

contract TutorialToken is StandardToken {
    string public name = "Sri Lanka Bijou";
    string public symbol = 'SLKB';
    uint8 public decimals = 18;
    uint256 public constant INITIAL_SUPPLY = 10000000000000000000000000000;
    address myaddress = 0x9d98eFC9B44331518B8186eaeFfe29c02303A6D7;

    constructor() public {
        totalSupply_ = INITIAL_SUPPLY;
        balances[myaddress] = INITIAL_SUPPLY;
        emit Transfer(0x0, myaddress, INITIAL_SUPPLY);
        // balances[msg.sender] = INITIAL_SUPPLY;
         // emit Transfer(0x0, msg.sender, INITIAL_SUPPLY);
    }
}
