USE DB05;


-- DISPLAY all emoplyee whom experience is Entry Leveel and Salary greater than 100000.
SELECT 
    *
FROM
    salaries
WHERE
    experience_level = 'EN';

SELECT 
    *
FROM
    salaries
WHERE
    salary_in_usd > 100000;

SELECT 
    *
FROM
    salaries
WHERE
    salary_in_usd > 100000
        AND experience_level = 'EN'; 

SELECT 
    *
FROM
    salaries
WHERE
    salary_in_usd > 100000
        AND experience_level = 'EN'
        AND work_year = 2024; 

SELECT DISTINCT
    job_title
FROM
    salaries
WHERE
    salary_in_usd > 100000
        AND experience_level = 'EN'; 
        
        
/*
	Display all employees whose experience level is either EN or MI.
*/
SELECT 
    *
FROM
    salaries
WHERE
    experience_level = 'EN'
        OR experience_level = 'MI';

/*
	Display all employees who either have work from home or have salary greater than 100000.
*/
SELECT 
    *
FROM
    salaries
WHERE
    salary_in_usd > 100000
        OR remote_ratio = 100;
        
/*
DISPLAY EMPLOYEE HAVING SALARY GREATER THAN 100000 AND
 ENJOY FULLY REMOTE JOB
*/

SELECT 
    *
FROM
    salaries
WHERE
    remote_ratio = 100
        AND salary_in_usd > 100000; 

/*
display all all employees who does not work in small company 
*/

SELECT DISTINCT
    company_size
FROM
    salaries;

SELECT 
    *
FROM
    salaries
WHERE
    NOT company_size = 's';  

SELECT 
    *
FROM
    salaries
WHERE
    company_size != 's';  

/*
DISPLAY ALL EMPLOYEES HAVING SALARY GREATER THAN 100000 
BUT JOB TITLE COUNT BE EITHER DATA ANALYST OR DATA SCIENTIST
*/

SELECT 
    *
FROM
    salaries
WHERE
    salary_in_usd > 100000
        AND (job_title = 'Data Analyst'
        OR job_title = 'Data Scientist');
.0