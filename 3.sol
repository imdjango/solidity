pragma solidity >=0.7.0 <0.9.0;

contract test
{
    address public ownerAddress;
    constructor()
    {
        ownerAddress = msg.sender;
    }

    function getSenderAddress() public returns(address )
    {
        return msg.sender;
    }
    function getSenderBalance() public returns(uint256)
    {
        return msg.sender.balance;
    }

    function sendTo(address payable toAddress) public payable returns(bool)
    {
        require(msg.sender != toAddress, "same");
        return toAddress.send(msg.value);
    }
    function getContractBalance() public returns(uint256)
    {
        address contractAddress = address(this);
        return contractAddress.balance;
    }

    function saveContract() public payable returns(bool)
    {
        // 쌓인 컨트랙트..
    }

    function takeContractBalance() public payable
    {
        address contractAddress = address(this);
        address payable owner = payable(ownerAddress);
        owner.transfer(contractAddress.balance);
    }
}
