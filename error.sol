// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentDatabase {
    // Define custom error for when profile does not exist
    error ProfileDoesNotExist();

    // Define struct for student profile
    struct Student {
        string name;
        uint256 age;
        string techStack;
    }

    // Mapping to store student profiles by address
    mapping(address => Student) public students;

    // Function to create a student profile
    function createStudentProfile(
        string memory _name,
        uint256 _age,
        string memory _techStack
    ) public {
        // Require name, age, and tech stack to be valid
        require(bytes(_name).length > 0, "Name cannot be empty");
        require(_age > 0, "Age must be greater than zero");
        require(bytes(_techStack).length > 0, "Tech stack cannot be empty");

        // Store student profile
        students[msg.sender] = Student(_name, _age, _techStack);
    }

    // Function to update student profile
    function updateProfile(
        string memory _name,
        uint256 _age,
        string memory _techStack
    ) public {
        // Require profile to exist
        require(
            bytes(students[msg.sender].name).length > 0,
            "Profile does not exist"
        );

        // Update student profile
        students[msg.sender] = Student(_name, _age, _techStack);
    }

    // Function to delete student profile
    function deleteProfile() public {
        // Require profile to exist
        require(
            bytes(students[msg.sender].name).length > 0,
            "Profile does not exist"
        );

        // Delete student profile
        delete students[msg.sender];
    }

    // Function to view student profile
    function viewProfile()
        public
        view
        returns (string memory, uint256, string memory)
    {
        // Require profile to exist
        require(
            bytes(students[msg.sender].name).length > 0,
            "Profile does not exist"
        );

        // Return student profile
        return (
            students[msg.sender].name,
            students[msg.sender].age,
            students[msg.sender].techStack
        );
    }

    // Function to demonstrate assertion
    function assertExample(uint256 _value) public pure returns (bool) {
        assert(_value > 0); // Ensure value is greater than zero
        return true;
    }

    // Function to demonstrate revert with custom error message
    function revertExample() public pure {
        revert("Custom error message"); // Revert with custom error message
    }
}
