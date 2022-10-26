pragma solidity >=0.7.0 <0.9.0;

interface animalInterface
{
    function shouting() external returns(string memory);
}

contract Animal 
{
    string public _name;
    bool public _isNight = true;

    constructor(string memory name)
    {
        _name = name;
    }

    function shouting() virtual public returns(string memory)
    {
        return "...";
    }
}

contract Cat is Animal("cat")
{
    modifier NotNight()
    {
        require(isNight == false, "cant!");
        _;
    }

    function shouting() override public NotNight returns(string memory)
    {
        return "yayayayay";
    }
}

contract Dog is Animal("Dog")
{
    function shouting() override public returns(string memory)
    {
        require(_isNight == false, "cant!");
        return "Mung!";
    }
}