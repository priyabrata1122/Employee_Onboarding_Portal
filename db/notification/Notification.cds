using onboarding.common as common from '../common/aspects';
using {onboarding.common.NotificationType} from '../common/enums';
using {onboarding.master.Employees} from '../master/Employee';

namespace onboarding.notification;

entity Notifications : common.AuditInfo {

    key ID               : UUID;

        employee         : Association to Employees;

        title            : String(100);

        message          : String(500);

        isRead           : Boolean default false;

        notificationType : NotificationType default #General;
}
