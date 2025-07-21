// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserProfile {
    
    struct User {
        string name;
        uint age;
        string email;
        uint registrationTimestamp;
        bool isRegistered;
    }

    mapping(address => User) private users;

    function register(string memory _name, uint _age, string memory _email) public {
        require(!users[msg.sender].isRegistered, "User already registered");

        users[msg.sender] = User({
            name: _name,
            age: _age,
            email: _email,
            registrationTimestamp: block.timestamp,
            isRegistered: true
        });
    }

    function updateProfile(string memory _name, uint _age, string memory _email) public {
        require(users[msg.sender].isRegistered, "User not registered");

        users[msg.sender].name = _name;
        users[msg.sender].age = _age;
        users[msg.sender].email = _email;
    }

    function getProfile() public view returns (string memory, uint, string memory, uint) {
        require(users[msg.sender].isRegistered, "User not registered");

        User memory u = users[msg.sender];
        return (u.name, u.age, u.email, u.registrationTimestamp);
    }
}