using onboarding.common as common from '../common/aspects';
using {onboarding.common.ApprovalStatus} from '../common/enums';
using {onboarding.workflow.Approvals} from './Approval';

namespace onboarding.workflow;

entity ApprovalHistories : common.AuditInfo {

    key ID             : UUID;

        approval       : Association to Approvals;

        previousStatus : ApprovalStatus;

        newStatus      : ApprovalStatus;

        comments       : String(500);
}
