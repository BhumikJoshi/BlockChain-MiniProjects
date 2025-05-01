// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; //any version of solidity after 0.8.17

contract SimpleStorage
{
    uint256 myfavoriteNumber; // If no value is given for FavouriteNumber it will be default value 0

    //uint256[] ListOfFavoriteNumbers;
    struct Person
    {
        uint256 favoriteNumber;
        string name;
    }
     
    Person[] public listofPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual // we will add virtual keyword so that if we ever want to override data using inheritance in another contract which will inherit this one
    {
        myfavoriteNumber = _favoriteNumber;
    }

    //view, pure
    function retrieve() public view returns(uint256) //view is used to only read what is written within the blockchain unlike pure which neither allows updating blockchain neither read the blockchain
    {
        return myfavoriteNumber;
    }

    //memory, calldata, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public //we use memory cause we can then only access that data once and not be able to update it later on during the execution; but it can be done in the code lines which is not allowed when using calldata
    {
        listofPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    } // while memory & calldata are temporary variables, storage isn't one

}
