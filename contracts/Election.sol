pragma solidity >=0.4.16 <0.9.0;

contract Election{

    // string public candidate; --smoke test
    struct Candidate{
        uint id;
        string name;
        uint voteCount;
    }

    mapping(uint => Candidate)public candidates;//fetch

    uint public candidatesCount;//store count

    constructor() public{
        // candidate = "Candidat 1"; --smoke test
        addCandidate("Candidate 1");
        addCandidate("Candi 2");

    }
    function addCandidate (string memory _name) private {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);

    }

}