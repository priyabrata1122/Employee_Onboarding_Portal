using onboarding.common as common from '../common/aspects';
using {onboarding.asset.Assets} from './Asset';

namespace onboarding.asset;

entity AssetMaintenances : common.AuditInfo {

    key ID               : UUID;

        asset            : Association to Assets;

        issueDescription : String(500);

        maintenanceDate  : Date;

        resolution       : String(500);

        performedBy      : String(100);
}
