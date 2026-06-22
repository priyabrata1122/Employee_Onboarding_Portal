using onboarding.common as common from '../common/aspects';

using {
    onboarding.common.ApprovalStatus,
    onboarding.common.ApprovalStage
} from '../common/enums';

using {onboarding.master.Employees} from '../master/Employee';


namespace onboarding.workflow;

entity Approvals : common.AuditInfo {

    key ID         : UUID;

        employee   : Association to Employees;

        approver   : Association to Employees;

        stage      : ApprovalStage;

        status     : ApprovalStatus default 'Pending';

        comments   : String(500);

        approvedAt : Timestamp;
}
