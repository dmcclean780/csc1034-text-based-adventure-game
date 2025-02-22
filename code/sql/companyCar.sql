-- This is a single line comments
/*
	This is a 
    multiline comment
*/

-- Creating the database
CREATE DATABASE companyCar;

-- Setting this as the active database
USE companyCar;

-- Creating the companies table
CREATE TABLE companies (    
   companyId INT AUTO_INCREMENT PRIMARY KEY,    
   companyName VARCHAR(100) NOT NULL
);

-- Creating the vehicles table
CREATE TABLE vehicles (    
   vehicleId INT AUTO_INCREMENT PRIMARY KEY,    
   companyId INT NOT NULL,    
   model VARCHAR(100) NOT NULL,    
   year INT NOT NULL,    
   price DECIMAL(10,2) NOT NULL,    
   FOREIGN KEY (companyId) REFERENCES companies(companyId)
);

-- Inserting test data into companies
INSERT INTO companies (companyName) 
VALUES 
	('TechCorp'), 
    ('Innovate Ltd'); 
    
-- Displaying all rows from companies
SELECT * FROM companies;

-- Inserting test data into vehicles
INSERT INTO vehicles (companyId, model, year, price) 
VALUES 
   (1, 'Model X', 2022, 75000.00),    
   (1, 'Model Y', 2023, 65000.00),    
   (2, 'Sedan A', 2021, 40000.00);
   
-- Displaying all test data from vehicles   
SELECT * FROM vehicles;    
   
-- Testing referential integrity - this should throw an error!
INSERT INTO vehicles (companyId, model, year, price) 
VALUES 
	(999, 'Model G', 2020, 55000.00);

-- Removing the tables - effectively resets the DB
DROP TABLE vehicles;
DROP TABLE companies;
