using onboarding.common as common from '../common/aspects';
using {onboarding.master.Employees} from './Employee';

namespace onboarding.master;

entity EmployeeProfiles : common.AuditInfo {

    key ID              : UUID;

        employee        : Association to Employees;

        skills          : LargeString;

        education       : LargeString;

        experience      : LargeString;

        totalExperience : Decimal(4, 1);
}
