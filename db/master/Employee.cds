using onboarding.common as common from '../common/aspects';

using {onboarding.common.EmployeeStatus} from '../common/enums';
using {onboarding.master.Departments} from './Department';
using {onboarding.document.Documents} from '../document/Document';
using {onboarding.workflow.Approvals} from '../workflow/Approval';
using {onboarding.asset.AssetAllocations} from '../asset/AssetAllocation';

namespace onboarding.master;

entity Employees : common.AuditInfo {

    key ID           : UUID;

        @mandatory
        employeeCode : String(20);

        @mandatory
        firstName    : String(50);

        lastName     : String(50);

        @mandatory
        email        : String(100);

        phone        : String(20);

        joiningDate  : Date;

        designation  : String(100);

        status       : EmployeeStatus default 'Draft';

        department   : Association to Departments;

        manager      : Association to Employees;

        documents    : Composition of many Documents
                           on documents.employee = $self;

        approvals    : Composition of many Approvals
                           on approvals.employee = $self;

        allocations  : Composition of many AssetAllocations
                           on allocations.employee = $self;
}
