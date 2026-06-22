using onboarding.common as common from '../common/aspects';

using {onboarding.common.AssetStatus} from '../common/enums';
using {onboarding.asset.AssetAllocations} from './AssetAllocation';

namespace onboarding.asset;

entity Assets : common.AuditInfo {

    key ID           : UUID;

        assetCode    : String(20);

        assetName    : String(100);

        assetType    : String(50);

        serialNumber : String(100);

        purchaseDate : Date;

        status       : AssetStatus default 'Available';

        allocations  : Composition of many AssetAllocations
                           on allocations.asset = $self;
}
