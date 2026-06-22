using onboarding.common as common from '../common/aspects';
using { onboarding.master.Employees } from './Employee';


namespace onboarding.master;

entity Departments : common.AuditInfo {

    key ID       : UUID;

    @title : 'Department Name'
    name         : String(100);

    location     : String(100);

    employees    : Composition of many Employees on employees.department = $self;
}