//SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.7.0 < 0.9.0;

interface IDataContractInterface {
  function getAge() external pure returns(uint);
  function getHeight() external pure returns(uint);
  function getName() external pure returns(string memory);
  function getCar() external pure returns(string memory);
}


contract MainContract {
    
    // state variable called DataContractAddress that represents the address of the data contract
    
    address private constant DataContractAddress = 0xDA0bab807633f07f013f94DD0E6A4F96F8742B53;
    
    
    // to access the functions in the data contract
    // use the interface declared above and wrap the data contract address in ()
    // example interfaceName(address).functionName
   
    

    function getAge() external pure returns(uint) {
        return IDataContractInterface(DataContractAddress).getAge();
  }
  
    function getHeight() external pure returns(uint) {
        return IDataContractInterface(DataContractAddress).getHeight();
  }
  
    function getName() external pure returns(string memory) {
        return IDataContractInterface(DataContractAddress).getName();
  } 
  
    function getCar() external pure returns(string memory) {
        return IDataContractInterface(DataContractAddress).getCar();
  }
}