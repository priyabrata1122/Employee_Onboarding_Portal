using onboarding.common as common from '../common/aspects';
using {onboarding.master.Employees} from './Employee';

namespace onboarding.master;

entity EmergencyContacts : common.AuditInfo {

    key ID           : UUID;

        employee     : Association to Employees;

        contactName  : String(100);

        relationship : String(50);

        phone        : String(20);

        email        : String(100);
}
