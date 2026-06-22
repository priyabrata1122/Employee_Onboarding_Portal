using onboarding.common as common from '../common/aspects';
using {onboarding.master.Employees} from './Employee';

namespace onboarding.master;

entity EmployeeAddresses : common.AuditInfo {

    key ID          : UUID;

        employee    : Association to Employees;

        addressType : String(20);

        houseNo     : String(100);

        street      : String(100);

        city        : String(50);

        state       : String(50);

        country     : String(50);

        postalCode  : String(20);
}
