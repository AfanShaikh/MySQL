-- display all the databases

SHOW DATABASES;

-- created a new database named ur chioce
CREATE DATABASE DBPrac;


-- check for existing tables in the database 

USE DBPrac;

SHOW TABLES;

-- CREATE THE STRUCTURE OF THE TABLE 

CREATE TABLE emp(
	emp_id INT PRIMARY KEY AUTO_INCREMENT, 
    emp_name VARCHAR(50), 
    emp_email VARCHAR(100) UNIQUE, 
    emp_gender ENUM("MALE", "FEMALE", "OTHER"), 
    emp_age INT, 
    emp_salary DECIMAL(10, 2)
);


-- VIEW OF THE TABLE   

SELECT * FROM emp; 


-- inserting SINGLE entrY into table 
INSERT INTO emp(emp_name, emp_email, emp_gender, emp_age, emp_salary) 
VALUES("HashiRama Senju", "HashiRamaSenju@NARUTO.COM", "MALE", 30, 203480.23);

-- INSERTING MULTIPLE ENTRIES INTO THE TABLE 
INSERT INTO emp(emp_name, emp_email, emp_gender, emp_age, emp_salary) 
VALUES
("TobiRama Senju", "TobiRamaSenju@NARUTO.COM", "MALE", 35, 20234480.23), 
("Hiruzen Sarutobi", "HiruzenSarutobi@NARUTO.COM", "MALE", 54, 8923342.23), 
("Minato Namikaze", "MinatoNamikaze@NARUTO.COM", "MALE", 23, 8293423.23), 
("Tsunade Senju", "TsunadeSenju@NARUTO.COM", "FEMALE", 54, 23423523.32), 
("Kakashi Hatake", "KakashiHatake@NARUTO.COM", "MALE", 42, 23124823.23), 
("Naruto Uzimaki", "NarutoUzimaki@NARUTO.COM", "MALE", 39, 346248.32);  


-- transfering one data set for another 
CREATE TABLE salaries 
AS SELECT * FROM DB05.SALARIES; 


SHOW TABLES;

CREATE TABLE strawhat_crew 
AS SELECT * FROM DB05.STRAWHAt_CREW;

-- display total enteries in db
SELECT COUNT(*) FROM salaries; 

SELECT * FROM salaries; 

-- display work_year column from the table 

SELECT work_year 
FROM salaries; 

-- display multiple columns from the salaries table 

SELECT work_year, experience_level, job_title, salary_in_usd, remote_ratio, company_location
FROM salaries;  

-- display all columns from salaries table 

SELECT * 
FROM salaries; 

--  display all the unique elements from a particular column 

SELECT DISTINCT work_year 
FROM salaries ; 

-- DISPLAY ALL THE JOB ROLES IN THE GIVEN DATASET 

SELECT DISTINCT job_title 
FROM salaries; 

-- Operators 
-- (Comparison ) 

-- display all the 2020 employees
SELECT * 
FROM salaries 
WHERE work_year = 2020;

-- display all the employees for the job role "AI Engineer" 

SELECT * 
FROM salaries 
WHERE job_title = "AI Engineer"; 

SELECT * 
FROM salaries 
WHERE remote_ratio != 0; 

SELECT * 
FROM salaries 
WHERE remote_ratio = 0;

-- display all employees having salary less than 200000


SELECT * 
FROM salaries 
WHERE salary_in_usd < 200000; 


SELECT * 
FROM salaries 
WHERE salary_in_usd > 100000; 