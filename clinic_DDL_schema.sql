
CREATE TABLE clinic_patients (
    PatientID UNIQUEIDENTIFIER PRIMARY KEY,
    FullName NVARCHAR(255),
    Gender NVARCHAR(50),
    DateOfBirth DATE,
    PhoneNumber NVARCHAR(50),
    Email NVARCHAR(255),
    Address NVARCHAR(500),
    InsuranceProvider NVARCHAR(100),
    RegisteredDate DATE
);


CREATE TABLE clinic_doctors (
    DoctorID NVARCHAR(50) PRIMARY KEY,
    FullName NVARCHAR(255),
    Specialty NVARCHAR(100),
    Email NVARCHAR(255),
    PhoneNumber NVARCHAR(50),
    YearsExperience INT,
    Department NVARCHAR(100)
);


CREATE TABLE clinic_visits (
    VisitID UNIQUEIDENTIFIER PRIMARY KEY,
    PatientID UNIQUEIDENTIFIER,
    DoctorID NVARCHAR(50),
    VisitDate DATETIME,
    Department NVARCHAR(100),
    Reason NVARCHAR(100),
    DurationMinutes INT,
    VisitOutcome NVARCHAR(100),
    BillingAmount DECIMAL(10, 2),
    FOREIGN KEY (PatientID) REFERENCES clinic_patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES clinic_doctors(DoctorID)
);


CREATE TABLE clinic_diagnostics (
    TestID UNIQUEIDENTIFIER PRIMARY KEY,
    PatientID UNIQUEIDENTIFIER,
    TestType NVARCHAR(100),
    TestDate DATETIME,
    Result NVARCHAR(100),
    PerformedBy NVARCHAR(255),
    LabName NVARCHAR(255),
    TurnaroundHours INT,
    FOREIGN KEY (PatientID) REFERENCES clinic_patients(PatientID)
);

-- Table: clinic_rooms
CREATE TABLE clinic_rooms (
    RoomID NVARCHAR(50) PRIMARY KEY,
    RoomType NVARCHAR(100),
    Department NVARCHAR(100),
    Capacity INT,
    OccupancyStatus NVARCHAR(100)
);

-- Table: clinic_beds
CREATE TABLE clinic_beds (
    BedID NVARCHAR(50) PRIMARY KEY,
    RoomID NVARCHAR(50),
    OccupiedByPatientID UNIQUEIDENTIFIER NULL,
    OccupiedSince DATETIME NULL,
    Status NVARCHAR(100),
    FOREIGN KEY (RoomID) REFERENCES clinic_rooms(RoomID)
);

-- Table: clinic_triage
CREATE TABLE clinic_triage (
    TriageID UNIQUEIDENTIFIER PRIMARY KEY,
    VisitID UNIQUEIDENTIFIER,
    TriageLevel INT,
    WaitTimeMinutes INT,
    AssignedNurse NVARCHAR(255),
    TriageTime DATETIME,
    FOREIGN KEY (VisitID) REFERENCES clinic_visits(VisitID)
);

-- Table: clinic_staff
CREATE TABLE clinic_staff (
    StaffID NVARCHAR(50) PRIMARY KEY,
    FullName NVARCHAR(255),
    Role NVARCHAR(100),
    Shift NVARCHAR(100),
    AssignedDepartment NVARCHAR(100)
);
