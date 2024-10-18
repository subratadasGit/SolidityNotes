//SPDX-Licence-Identifier : MIT
pragma solidity ^0.8.13; // 

contract myfc{
    // directly update the variables 
    string public hey = "Subrata Das"; 
    uint256 public num = 10 ;


    // using construtor 

    string public name ;
    uint256 public no ;
    constructor(string memory _name , uint256  _no){
        name = _name;
        no = _no;
    }
    // using Functions
    string public name2;
    uint256 public num2 ;
    function addinfo(string memory _name2 , uint256 _num2) public {
        name2 = _name2;
        num2 = _num2 ;
    }
    
}