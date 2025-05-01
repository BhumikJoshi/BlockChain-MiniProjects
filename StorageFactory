// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol"; // we do this cause if there were multiple contracts within StorageFactory.sol we wouldn't want to call all the contracts; so if we wanted to import only one contract we will specify the contract we will import

contract StorageFactory
{
    SimpleStorage[] public listofSimpleStorageContracts;

    function createSimpleStorageContract() public 
    {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listofSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public 
    {
        listofSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256)
    {
        return listofSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }
}
