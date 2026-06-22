using onboarding.asset.Assets as dbAssets from '../db/asset/Asset';
using onboarding.asset.AssetAllocations as dbAssetAllocations from '../db/asset/AssetAllocation';
using onboarding.asset.AssetMaintenances as dbAssetMaintenances from '../db/asset/AssetMaintenance';

service AssetService {

    entity Assets            as projection on dbAssets;

    entity AssetAllocations  as projection on dbAssetAllocations;

    entity AssetMaintenances as projection on dbAssetMaintenances;
}
