// SPDX-License-Identifier: NOLICENSE
pragma solidity ^0.8.0;

contract StudentData {

    //structure
    struct Student {
        string name;
        uint256 rollNo;
    }


    //array
    Student[] public studentarr;

    function addStudent (string memory name,uint256 rollNo)public{
        for (uint i=0;i < studentarr.length; i++) 
        {
            if(studentarr[i].rollNo == rollNo){
                revert("Student with this roll no already exists");
            }
        }
        studentarr.push(Student(name,rollNo));
    }


    function getStudentsLength() public view returns(uint){
        return studentarr.length;
    }
    
    function displayAllStudents() public view returns (Student[] memory){
        return studentarr;
    }

  //  function getStudentByIndex(uint256 index) public view  returns (Student memory){
  //      require(index < studentarr.length, "Index out of bounds");
  //      return studentarr[index];
  //  }


    //fallback
    fallback() external payable {
         //this function will handle external function call which is not there in our contract
      }
    
    receive() external payable { 
        //this function will handle the ether sent by external user but without data mentioned
    }
}