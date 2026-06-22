using onboarding.document.Documents as dbDocuments from '../db/document/Document';

service DocumentService {

    entity Documents as projection on dbDocuments;

}
