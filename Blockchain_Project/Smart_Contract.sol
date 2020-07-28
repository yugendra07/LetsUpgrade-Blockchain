 pragma solidity ^0.4.21 < 0.6.12; 

contract ReportCard{
   
    string public Name;
    uint public   Rollno ;
    string public Batch;
    uint public   Sub1 ;
    uint public   Sub2 ;
    uint public   Sub3 ;
    uint public   Sub4 ;
    string public Status;
    
    function ReportCard(string newName, uint newRollno, string newBatch, uint newSub1,uint newSub2,uint newSub3,uint newSub4) public { 
        
        Name = newName;
        Rollno = newRollno;
        Batch = newBatch;
        Sub1 = newSub1;
        Sub2 = newSub2;
        Sub3 = newSub3; 
        Sub4 = newSub4;
        if(newSub1 > 33 && newSub2 > 33 && newSub3 > 33 && newSub4 > 33)
            {
                Status = 'Pass';
            }
        else
            {
                Status = 'Fail';
            }
            
        }
    function getReportCurrentDetails() public view returns(string,uint,string,uint,uint,uint,uint,string  ){
        return(Name,Rollno,Batch,Sub1,Sub2,Sub3,Sub4,Status);
        }        
        
    }
    
//https://ropsten.etherscan.io/tx/0xa6d00f1c6a00821af95276617bb7c3494b2666d41a73a3889da2d85821e01b6a
//Transaction = 0x71D7e4D4A79aaC7e10d3BB0463066774Eb4BDE06
