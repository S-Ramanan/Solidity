 //SPDX-License-Identifier: MIT
pragma solidity 0.5.1;
contract mycontract{
    string doit;
    constructor() public{
        doit="blockchain";
    }
    function first() public view returns (string memory){
        return doit;
    }


}
