pragma solidity 0.5.1;
//payee->person who is getting paid
contract escrow{
    address agent;
    mapping(address => uint256) public deposits;
    modifier onlyagent(){
        require(msg.sender==agent);
        _;
    }

       constructor() public{
           agent=msg.sender;
       }
       //selling the property
       function deposit(address payee) public onlyagent payable{
       //value sent
           uint256 amount=msg.value;
           deposits[payee]=deposits[payee]+amount;
       } 

       function withdraw(address payable payee) public onlyagent{
           uint256 payment=deposits[payee];
           deposits[payee]=0;
           payee.transfer(payment);
       }
}
