pragma solidity ^0.4.4;

contract Lancemain {
    
    mapping(address => uint256) public fund_map;
    mapping(address => address) public contract_map;    
    
    function upload_funds(address recv) public payable {
        fund_map[msg.sender] = msg.value;
        contract_map[msg.sender] = recv;
    }
    
    function release_funds() public {
        contract_map[msg.sender].transfer(fund_map[msg.sender]);
    }
}