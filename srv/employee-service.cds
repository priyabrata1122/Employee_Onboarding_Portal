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

annotate EmployeeService.Employees with @(
    UI.HeaderInfo     : {
        TypeName      : 'Employee',
        TypeNamePlural: 'Employees',
        Title         : {Value: firstName}
    },

    UI.LineItem       : [
        {Value: employeeCode},
        {Value: firstName},
        {Value: lastName},
        {Value: email}
    ],

    UI.SelectionFields: [
        employeeCode,
        firstName,
        email
    ]
);

annotate EmployeeService.Employees with {
    employeeCode @Common.Label: 'Employee Code';
    firstName    @Common.Label: 'First Name';
    lastName     @Common.Label: 'Last Name';
    email        @Common.Label: 'Email';
};

annotate EmployeeService.Departments with @(
    UI.HeaderInfo     : {
        TypeName      : 'Department',
        TypeNamePlural: 'Departments',
        Title         : {Value: name}
    },

    UI.LineItem       : [
        {Value: name},
        {Value: location}
    ],

    UI.SelectionFields: [
        name,
        location
    ]
);

annotate EmployeeService.Departments with {

    name     @(Common.Label: 'Department Name');

    location @(Common.Label: 'Location');

};

annotate EmployeeService.EmployeeProfiles with @(
    UI.HeaderInfo     : {
        TypeName      : 'Employee Profile',
        TypeNamePlural: 'Employee Profiles',
        Title         : {Value: employee.firstName}
    },

    UI.LineItem       : [
        {Value: employee.firstName},
        {Value: totalExperience},
        {Value: skills}
    ],

    UI.SelectionFields: [totalExperience]
);

annotate EmployeeService.EmployeeProfiles with {

    employee        @(Common.Label: 'Employee');

    skills          @(Common.Label: 'Skills');

    education       @(Common.Label: 'Education');

    experience      @(Common.Label: 'Work Experience');

    totalExperience @(Common.Label: 'Total Experience (Years)');

};

annotate EmployeeService.EmployeeAddresses with @(
    UI.HeaderInfo     : {
        TypeName      : 'Employee Address',
        TypeNamePlural: 'Employee Addresses',
        Title         : {Value: city}
    },

    UI.LineItem       : [
        {Value: employee.firstName},
        {Value: addressType},
        {Value: city},
        {Value: state},
        {Value: country},
        {Value: postalCode}
    ],

    UI.SelectionFields: [
        addressType,
        city,
        state,
        country
    ]
);

annotate EmployeeService.EmployeeAddresses with {

    employee    @(Common.Label: 'Employee');

    addressType @(Common.Label: 'Address Type');

    houseNo     @(Common.Label: 'House Number');

    street      @(Common.Label: 'Street');

    city        @(Common.Label: 'City');

    state       @(Common.Label: 'State');

    country     @(Common.Label: 'Country');

    postalCode  @(Common.Label: 'Postal Code');

};

annotate EmployeeService.EmergencyContacts with @(
    UI.HeaderInfo     : {
        TypeName      : 'Emergency Contact',
        TypeNamePlural: 'Emergency Contacts',
        Title         : {Value: contactName}
    },

    UI.LineItem       : [
        {Value: employee.firstName},
        {Value: contactName},
        {Value: relationship},
        {Value: phone},
        {Value: email}
    ],

    UI.SelectionFields: [
        contactName,
        relationship,
        phone
    ]
);

annotate EmployeeService.EmergencyContacts with {

    employee     @(Common.Label: 'Employee');

    contactName  @(Common.Label: 'Contact Name');

    relationship @(Common.Label: 'Relationship');

    phone        @(Common.Label: 'Phone Number');

    email        @(Common.Label: 'Email Address');

};
