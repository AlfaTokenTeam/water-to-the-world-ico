pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract WaterToTheWorld is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function WaterToTheWorld(address _owner)  UpgradeableToken(_owner) {
    name = "WaterToTheWorld";
    symbol = "W2TW";
    totalSupply = 40000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}