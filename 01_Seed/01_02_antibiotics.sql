-- drop table 
DROP TABLE IF EXISTS ANTIBIOTICS;

-- create table
CREATE TABLE ANTIBIOTICS (
    icustay_id INT,
    starttime TIMESTAMP,
    endtime TIMESTAMP,
    amount DECIMAL,
    amountuom TEXT,
    rate TEXT,
    rateuom TEXT,
    ordercategoryname TEXT,
    patientweight DECIMAL,
    totalamount	INT,
    totalamountuom TEXT,
    statusdescription TEXT,
    label TEXT,
    abbreviation TEXT,
    antibiotic INT,
    dbsource TEXT
);

-- seed table
COPY ANTIBIOTICS
FROM '/Users/joshbryden/Desktop/github/MIMIC_III/data/antibiotics.csv'
DELIMITER ','
CSV HEADER
;