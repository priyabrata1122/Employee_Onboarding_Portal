using onboarding.master.Departments as dbDepartments from '../db/master/Department';
using onboarding.master.Employees as dbEmployees from '../db/master/Employee';
using onboarding.master.EmployeeAddresses as dbEmployeeAddresses from '../db/master/EmployeeAddress';
using onboarding.master.EmergencyContacts as dbEmergencyContacts from '../db/master/EmergencyContact';
using onboarding.master.EmployeeProfiles as dbEmployeeProfiles from '../db/master/EmployeeProfile';

service EmployeeService {

    entity Departments       as projection on dbDepartments;

    entity Employees         as projection on dbEmployees;

    entity EmployeeAddresses as projection on dbEmployeeAddresses;

    entity EmergencyContacts as projection on dbEmergencyContacts;

    entity EmployeeProfiles  as projection on dbEmployeeProfiles;
}
