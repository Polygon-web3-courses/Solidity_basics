//SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.7.0 < 0.9.0;


// This is to chehck whether the contracts data is compatible
interface IERC165 {
    function supportsInterface(bytes4 interfaceId) external view returns(bool);
}

contract ERC165 is IERC165{

    /*

    /// @notice Query if a contract implements an interface
    /// @param interfaceID The interface identifier, as specified in ERC-165
    /// @dev Interface identification is specified in ERC-165. This function
    ///  uses less than 30,000 gas.
    /// @return `true` if the contract implements `interfaceID` and
    ///  `interfaceID` is not 0xffffffff, `false` otherwise*/

    // write a claculation interface function algorithm
    function calcFingerPrint() public pure returns(bytes4){
        return bytes4(keccak256('supportsInterface(bytes4)'));

        // function supports interface value
        // 0x01ffc9a7
    }

    mapping(bytes4 => bool) private _supportInterfaces;

    function supportsInterface(bytes4 interfaceId) external override view returns(bool){
       return  _supportInterfaces[interfaceId];
    }

    function registerInterface(bytes4 interfaceId) public{
        require(interfaceId != 0xffffffff);
        _supportInterfaces[interfaceId] = true;
    }

}

