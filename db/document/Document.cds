using onboarding.common as common from '../common/aspects';

using {onboarding.common.DocumentType} from '../common/enums';
using { onboarding.master.Employees } from '../master/Employee';


namespace onboarding.document;

entity Documents : common.AuditInfo {

    key ID           : UUID;

        employee     : Association to Employees;

        documentType : DocumentType;

        fileName     : String(255);

        fileUrl      : String(500);
}
