using onboarding.workflow.Approvals as dbApprovals from '../db/workflow/Approval';
using onboarding.workflow.ApprovalHistories as dbApprovalHistories from '../db/workflow/ApprovalHistory';
using onboarding.workflow.OnboardingTasks as dbOnboardingTasks from '../db/workflow/OnboardingTask';

service WorkflowService {

    entity Approvals         as projection on dbApprovals;

    entity ApprovalHistories as projection on dbApprovalHistories;

    entity OnboardingTasks   as projection on dbOnboardingTasks;

}
