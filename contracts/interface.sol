//SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.7.0 < 0.9.0;

contract dataContract {
    
  function getAge() external pure returns(uint) {
    return 25;
  }
  
  function getHeight() external pure returns(uint) {
    return 6;
  }
  
  function getName() external pure returns(string memory) {
    return 'Bob';
  }

  function getCar() external pure returns(string memory) {
    return 'truck';
  }
}

// contract address = 0xDA0bab807633f07f013f94DD0E6A4F96F8742B53