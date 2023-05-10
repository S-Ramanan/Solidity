//SPDX-License-Identifier: MIT
pragma solidity 0.5.1;

contract ERC20token{
    string public name;
    mapping(address=>uint256) public balances;

    function mint() public{
         //buy a token
    balances[tx.origin]++;
    }

}
contract mycontract{
    address payable wallet;
    address public token;
constructor (address payable _wallet, address _token) public{
    wallet=_wallet;
    token=_token;
}
function() external payable{
    buytoken();
} 
function buytoken() public payable{
    ERC20token(address(token)).mint();
   //send ether to the wallet
    wallet.transfer(msg.value);
    }
}



