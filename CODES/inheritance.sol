//SPDX-License-Identifier: MIT
pragma solidity 0.5.1;

contract ERC20token{
    string public name;
    mapping(address=>uint256) public balances;
    
    constructor(string memory _name) public{
        name=_name;

    }

    function mint() public{
         //buy a token
    balances[tx.origin]++;
    }
}

contract mytoken is ERC20token{
    string public syb;
    address[] public owners;
    uint256 ownercount;
    constructor(
        string memory _name,
        string memory _syb) 
        ERC20token(_name) 
        public{
        syb=_syb;
    }

    function mint() public{
        super.mint();
        ownercount++;
        owners.push(msg.sender);
    }

}