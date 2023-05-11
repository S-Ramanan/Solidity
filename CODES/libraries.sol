pragma solidity 0.5.1;

library Math{
    function divide(uint256 a,uint256 b) internal pure returns(uint256){
        require(b>0);
        uint256 c=a / b;
        return c;

    }
}

contract my{
    uint256 public value;
    function cal(uint256 _v1,uint256 _v2) public{
     value=Math.divide(_v1,_v2);
    }
}