pragma solidity >=0.7.0 <0.9.0;



contract random
{
    address ownerAddress;
    address userAddress;
    uint userBalance;
    uint userDiceNumber;
    uint diceNumber;
    
    constructor()
    {
        ownerAddress = msg.sender.address;
    }

    function getUserAddress() public view returns (address)
    {
        return userAddress = msg.sender.address
    }


    function getUserBalance() public view returns (uint256)
    {
        return userBalance = msg.sender.balance.
    }

    function random() public returns(uint256)
    {
        return uint256(keccak256(abi.encodePacked(block.difficulty, block.timestamp)));
    }

    function getRandom() public returns(uint256)
    {
        uint256 div = random() % 6;
        uint256 diceNumber = div + 1;
        return diceNumber;
    }

    function dice(uint userDiceNumber) public{
        require(userDiceNumber>=1 && userDiceNumber<=6, "wrong")
        if (userDiceNumber == diceNumber)
        {

        }
    
    else 

    }

    function 
}