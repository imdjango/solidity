pragma solidity >=0.7.0 <0.9.0;

import "hardhat/console.sol";

contract Dice
{
    address public owner;

    constructor()
    {
        owner = msg.sender;
    }

    function random() public view returns(uint256)
    {
        return uint256(keccak256(abi.encodePacked(block.difficulty, block.timestamp)));
    }
    
    function saveEther() payable public
    {
    }

    function sendToOwner() public payable
    {
        address contractAddress = address(this);
        address payable ownerAddress = payable (owner);
        ownerAddress.transfer(contractAddress.balance);
    }
    
    function dice(uint256 userNumber) public payable returns(string memory) 
    {
        require(userNumber > 0 && userNumber < 7, "number : 1 ~ 6");
        require(msg.value >= 1 ether, "must be greater than 1 ether");
        require(address(this).balance >= 2 ether, "not enough ether...");

        uint256 number = (random() % 6) + 1;
        if ( userNumber == number)
        {
            address payable sender = payable(msg.sender);
            sender.transfer(2 ether);
            return "Win!";
        }
        else
        {
            return "Lose!";
        }
    }
}