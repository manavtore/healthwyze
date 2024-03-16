// SPDX-License-Identifier: MIT

pragma solidity = 0.8.0 ;

contract Medical {
    struct Patient {
        string name;
    }
    
    struct Record {
        string id;
        address[] doctors;
    }
    
    mapping(string => uint256) private patientIndex;
    mapping(uint => mapping(string => Record)) public patientRecords;


    Patient[] public patients;

    function getPatients() public view returns (Patient[] memory) {
        return patients;
    }    

    function getPatientsRecords(string memory _username , string memory id) public view returns (Record memory) {
        uint256 index = patientIndex[_username];
        return patientRecords[index][id];
    }
 

    function addPatient(string memory _name, string calldata _username) public {
        patients.push(Patient({name : _name}));
        patientIndex[_username] = patients.length - 1;
    }


    function deletePatient(string memory _username) public {
        uint256 index = patientIndex[_username];
        
        
        delete patients[index];
        delete patientIndex[_username];
    }

    
    function addRecord(string memory _username, string memory _id) public {
        uint256 index = patientIndex[_username];
        
       patientRecords[index][_id] = Record(_id, new address[](0));
    }
    
    function deleteRecord(string memory _id , string memory _username ) public {
        uint256 index = patientIndex[_username];
       
        
        delete patientRecords[index][_id];
    }
    
  
    function grantAccess(string memory _username, string memory _id, address _doctor) public {
        uint256 index = patientIndex[_username];
        
       patientRecords[index][_id].doctors.push(_doctor);
    }
    
    function revokeAccess(string memory _username, string memory _id, address _doctor) public {
        uint256 index = patientIndex[_username];
        
        address[] storage doctors = patientRecords[index][_id].doctors;
        for (uint256 i = 0; i < doctors.length; i++) {
            if (doctors[i] == _doctor) {
                doctors[i] = doctors[doctors.length - 1];
                doctors.pop();
                break;
            }
        }
    }
}