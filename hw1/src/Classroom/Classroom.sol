// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    // Note: You can declare some state variable
    // add a constructor 
    bool private called;
    
    function register() external returns (uint256) {
        // TODO: please add your implementaiton here
        if(!called){
            called = true;
            return 1000;
        }
        return 123;
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256){
        if(!IClassroomV2(msg.sender).isEnrolled()){
            return 1000;
        }else{
            return 123;
        }
    }
}

interface IClassroomV3 {
    function isEnrolled() external view returns (bool);
    function code() external view returns (uint256);
}
/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        if(gasleft() == 7194){
            return 1000;
        }else{
            return 123;
        }
    }
}
