// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    mapping(string => uint) public votes;
    string[] public candidates;

    constructor(string[] memory _candidates) {
        candidates = _candidates;
    }

    function vote(string memory _name) public {
        votes[_name]++;
    }

    function getVotes(string memory _name) public view returns (uint) {
        return votes[_name];
    }

    function getCandidates() public view returns (string[] memory) {
        return candidates;
    }
}
