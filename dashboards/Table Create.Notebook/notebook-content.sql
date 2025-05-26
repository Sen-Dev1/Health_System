-- Fabric notebook source

-- METADATA ********************

-- META {
-- META   "kernel_info": {
-- META     "name": "synapse_pyspark"
-- META   },
-- META   "dependencies": {
-- META     "lakehouse": {
-- META       "default_lakehouse": "8932c9b9-27d6-4e66-89c3-ac97e1b7a6fa",
-- META       "default_lakehouse_name": "HealthcareLakehouse",
-- META       "default_lakehouse_workspace_id": "c87bf39d-bb68-44c5-a340-f922df29bfe4",
-- META       "known_lakehouses": [
-- META         {
-- META           "id": "8932c9b9-27d6-4e66-89c3-ac97e1b7a6fa"
-- META         }
-- META       ]
-- META     }
-- META   }
-- META }

-- CELL ********************

-- Welcome to your new notebook
-- Type here in the cell editor to add code!



CREATE TABLE clinic_patients (
    PatientID STRING,
    FullName STRING,
    Gender STRING,
    DateOfBirth DATE,
    PhoneNumber STRING,
    Email STRING,
    Address STRING,
    InsuranceProvider STRING,
    RegisteredDate DATE
);

CREATE TABLE clinic_doctors (
    DoctorID STRING,
    FullName STRING,
    Specialty STRING,
    Email STRING,
    PhoneNumber STRING,
    YearsExperience INT,
    Department STRING
);

CREATE TABLE clinic_visits (
    VisitID STRING,
    PatientID STRING,
    DoctorID STRING,
    VisitDate TIMESTAMP,
    Department STRING,
    Reason STRING,
    DurationMinutes INT,
    VisitOutcome STRING,
    BillingAmount DOUBLE
);

CREATE TABLE clinic_diagnostics (
    TestID STRING,
    PatientID STRING,
    TestType STRING,
    TestDate TIMESTAMP,
    Result STRING,
    PerformedBy STRING,
    LabName STRING,
    TurnaroundHours INT
);


-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }
