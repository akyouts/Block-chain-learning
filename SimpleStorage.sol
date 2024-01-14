// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.0;

contract SimpleStorage {

    uint256 public  favtroitNumber;

    struct people   {
          uint256 favtroitNumber ;
          string name;

    } 

    people public  People  = people({ favtroitNumber:12, name:"Ahad" });

    mapping(string => uint256) public nametofavnum;

    people[] public  PeopleArray;

    function setFavoutiteNumber(uint256 _favtroitNumber) public virtual   {
        favtroitNumber = _favtroitNumber;
    }


    function retrive()public  view  returns (uint256){
       return favtroitNumber;
    }
    function pushName(string memory name , uint256 favnum)public{
       PeopleArray.push(people({name:name,favtroitNumber:favnum}));
       nametofavnum[name]= favnum;
    }


}