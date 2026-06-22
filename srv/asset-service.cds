using onboarding.asset.Assets as dbAssets from '../db/asset/Asset';
using onboarding.asset.AssetAllocations as dbAssetAllocations from '../db/asset/AssetAllocation';
using onboarding.asset.AssetMaintenances as dbAssetMaintenances from '../db/asset/AssetMaintenance';

service AssetService {

    entity Assets            as projection on dbAssets;

    entity AssetAllocations  as projection on dbAssetAllocations;

    entity AssetMaintenances as projection on dbAssetMaintenances;
}

annotate AssetService.Assets with @(
    UI.HeaderInfo              : {
        TypeName      : 'Asset',
        TypeNamePlural: 'Assets',
        Title         : {Value: assetName}
    },

    UI.LineItem                : [
        {Value: assetCode},
        {Value: assetName},
        {Value: assetType},
        {Value: serialNumber},
        {Value: purchaseDate},
        {Value: status}
    ],

    UI.SelectionFields         : [
        assetCode,
        assetName,
        assetType,
        status
    ],

    UI.FieldGroup #AssetDetails: {Data: [
        {Value: assetCode},
        {Value: assetName},
        {Value: assetType},
        {Value: serialNumber},
        {Value: purchaseDate},
        {Value: status}
    ]}

);

annotate AssetService.Assets with {

    assetCode    @(Common.Label: 'Asset Code');

    assetName    @(Common.Label: 'Asset Name');

    assetType    @(Common.Label: 'Asset Type');

    serialNumber @(Common.Label: 'Serial Number');

    purchaseDate @(Common.Label: 'Purchase Date');

    status       @(Common.Label: 'Asset Status');

};

annotate AssetService.AssetAllocations with @(
    UI.HeaderInfo                   : {
        TypeName      : 'Asset Allocation',
        TypeNamePlural: 'Asset Allocations',
        Title         : {Value: asset.assetName}
    },

    UI.LineItem                     : [
        {Value: employee.firstName},
        {Value: asset.assetName},
        {Value: allocationDate},
        {Value: returnDate},
        {Value: status}
    ],

    UI.SelectionFields              : [
        status,
        allocationDate,
        returnDate
    ],

    UI.FieldGroup #AllocationDetails: {Data: [
        {Value: employee},
        {Value: asset},
        {Value: allocationDate},
        {Value: returnDate},
        {Value: status}
    ]}
);

annotate AssetService.AssetAllocations with {

    employee       @(Common.Label: 'Employee');

    asset          @(Common.Label: 'Asset');

    allocationDate @(Common.Label: 'Allocation Date');

    returnDate     @(Common.Label: 'Return Date');

    status         @(Common.Label: 'Allocation Status');

};

annotate AssetService.AssetMaintenances with @(
    UI.HeaderInfo                    : {
        TypeName      : 'Asset Maintenance',
        TypeNamePlural: 'Asset Maintenances',
        Title         : {Value: asset.assetName}
    },

    UI.LineItem                      : [
        {Value: asset.assetName},
        {Value: maintenanceDate},
        {Value: performedBy},
        {Value: issueDescription}
    ],

    UI.SelectionFields               : [
        maintenanceDate,
        performedBy
    ],

    UI.FieldGroup #MaintenanceDetails: {Data: [
        {Value: asset},
        {Value: issueDescription},
        {Value: maintenanceDate},
        {Value: resolution},
        {Value: performedBy}
    ]}
);

annotate AssetService.AssetMaintenances with {

    asset            @(Common.Label: 'Asset');

    issueDescription @(Common.Label: 'Issue Description');

    maintenanceDate  @(Common.Label: 'Maintenance Date');

    resolution       @(Common.Label: 'Resolution');

    performedBy      @(Common.Label: 'Performed By');

};
