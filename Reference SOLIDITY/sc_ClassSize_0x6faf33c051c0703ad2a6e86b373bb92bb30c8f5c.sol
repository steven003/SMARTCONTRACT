/**********************************************************************
*These solidity codes have been obtained from Etherscan for extracting
*the smartcontract related info.
*The data will be used by MATRIX AI team as the reference basis for
*MATRIX model analysis,extraction of contract semantics,
*as well as AI based data analysis, etc.
**********************************************************************/
pragma solidity ^0.4.19;
// ECE 398 SC - Smart Contracts and Blockchain Security 
// http://soc1024.ece.illinois.edu/teaching/ece398sc/spring2018/

contract ClassSize {
    event VoteYes(string note);
    event VoteNo(string note);

    string constant proposalText = "Should the class size increase from 35 to 45?";
    uint16 public votesYes = 0;
    uint16 public votesNo = 0;
    function isYesWinning() public view returns(uint8) {
        if (votesYes >= votesNo) {
            return 0; // yes
        } else  {
            return 1; // no 
        }
    }
    function voteYes(string note) public {
        votesYes += 1;
        VoteYes(note);
    }
    function voteNo(string note) public {
        votesNo += 1;
        VoteNo(note);
    }
}