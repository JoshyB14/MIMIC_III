-- create table

CREATE TABLE ADMISSIONS(
    row_id INT,
    subject_id INT,
    hadm_id INT,
    admittime TIMESTAMP,
    dischtime TIMESTAMP,
    deathtime TIMESTAMP,
    admission_type TEXT,
    admission_location TEXT,
	discharge_location TEXT,
    insurance TEXT,
    language TEXT,
    religion TEXT,
    marital_status TEXT,
    ethnicity TEXT,
    edregtime TIMESTAMP,
    edouttime TIMESTAMP,
    diagnosis TIMESTAMP,
    hospital_expire_flag INT,
	has_chartevents_data INT
);

-- seed table
COPY ADMISSIONS
FROM '/Users/joshbryden/Desktop/github/MIMIC_III/data/admissions.csv'
DELIMITER ','
CSV HEADER
;
