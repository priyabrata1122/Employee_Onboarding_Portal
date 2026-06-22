using onboarding.common as common from '../common/aspects';

using {onboarding.common.TaskStatus} from '../common/enums';
using {onboarding.master.Employees} from '../master/Employee';

namespace onboarding.workflow;

entity OnboardingTasks : common.AuditInfo {

    key ID         : UUID;

        employee   : Association to Employees;

        taskName   : String(100);

        assignedTo : Association to Employees;

        dueDate    : Date;

        status     : TaskStatus default 'Open';
}
