pragma solidity >=0.7.0 <0.9.0;

contract shop{
    int public totalMilkCount = 0;
    int public totalAvocadoCount = 0;
    bool public hasAvocado = true;
    int public buyMilkAmount = 1;

    function buyMilk(int amount) public{
        totalMilkCount += amount;
    }
    function buyAvocado(int amount) public{
        totalAvocadoCount += amount;
    }
    function setHasAvocado(bool enable) public{
        hasAvocado = enable;
    }
    function setBuyMilkAmount(int amount) public{
       buyMilkAmount = amount;
    }


    function shopping() public{
        buyMilk(buyMilkAmount);
      if (hasAvocado == true){
            buyAvocado(6);
        }
    }
