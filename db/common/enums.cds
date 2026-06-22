namespace onboarding.common;

type EmployeeStatus   : String enum {
    Draft;
    PendingApproval;
    Approved;
    OnboardingInProgress;
    Completed;
    Rejected;
}

type AssetStatus      : String enum {
    Available;
    Allocated;
    Maintenance;
    Retired;
}

type AllocationStatus : String enum {
    Allocated;
    Returned;
    Lost;
}

type ApprovalStatus   : String enum {
    Pending;
    Approved;
    Rejected;
}

type ApprovalStage    : String enum {
    ManagerApproval;
    ITApproval;
    HRCompletion;
}

type DocumentType     : String enum {
    Resume;
    OfferLetter;
    PAN;
    Aadhaar;
    Certificate;
    Contract;
}

type TaskStatus       : String enum {
    Open;
    InProgress;
    Completed;
    Cancelled;
}
