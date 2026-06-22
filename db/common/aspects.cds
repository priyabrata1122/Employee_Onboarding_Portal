using {managed} from '@sap/cds/common';

namespace onboarding.common;

aspect CodeList {
    code        : String(20);
    name        : String(100);
    description : String(255);
}

aspect AuditInfo : managed {}
