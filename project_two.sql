CREATE DATABASE medical_desert_db;

USE medical_desert_db;

DROP TABLE IF EXISTS hpsa;
CREATE TABLE hpsa (
  id INT AUTO_INCREMENT NOT NULL,
  hpsa_name TEXT,
  designation_type TEXT,
  hpsa_discipline_class TEXT,
  hpsa_designation_date TEXT,
  county_name TEXT,
  zip_code TEXT,
  longitude DOUBLE,
  latitude DOUBLE,
  primary key(id)
);
-- SELECT * FROM hpsa;
-- DESCRIBE hpsa;

DROP TABLE IF EXISTS uninsured;
CREATE TABLE uninsured (
  id INT AUTO_INCREMENT NOT NULL,
  id2 INT,
  county_name TEXT,
  total_population INT,
  total_uninsured_population INT,
  primary key(id)
);
-- SELECT * FROM uninsured;
-- DESCRIBE uninsured;

-- merge tables
/*
SELECT h.county_name,h.longitude, h.latitude, u.total_population, u.total_uninsured_population
FROM hpsa AS h
JOIN uninsured AS u
ON h.county_name = u.county_name;
*/