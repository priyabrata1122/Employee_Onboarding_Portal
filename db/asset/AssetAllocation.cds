using onboarding.common as common from '../common/aspects';

using {onboarding.common.AllocationStatus} from '../common/enums';
using {onboarding.asset.Assets} from './Asset';
using {onboarding.master.Employees} from '../master/Employee';

namespace onboarding.asset;

entity AssetAllocations : common.AuditInfo {

    key ID             : UUID;

        employee       : Association to Employees;

        asset          : Association to Assets;

        allocationDate : Date;

        returnDate     : Date;

        status         : AllocationStatus default 'Allocated';
}
