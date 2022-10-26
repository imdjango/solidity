pragma solidity >=0.7.0 <0.9.0;

contract MappingTest
{
    mapping(string=>string) phoneNumberByName;

    constructor()
    {
        phoneNumberByName["yuno"] = "010-0000-7777";
        phoneNumberByName["im"] = "010-1234-1234";
    }

    function getPhoneNumber(string memory name) public view returns(string memory)
    {
        return phoneNumberByName[name];
    }
    function removePhoneNumber(string memory name) public
    {
        delete phoneNumberByName[name];
    }
}
