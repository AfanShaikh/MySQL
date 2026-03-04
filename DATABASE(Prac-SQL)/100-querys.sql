USE DBPrac;

-- 1. Show all records from the table.
SELECT *
FROM salaries;


-- 2.Display only job_title and salary_in_usd.

SELECT job_title , salary_in_usd
FROM salaries;

-- 3.Find all employees whose experience_level is 'SE'.
SELECT * 
FROM salaries
WHERE experience_level = 'SE';

-- 4.Show employees where salary_in_usd is greater than 100000.

SELECT *
FROM salaries 
WHERE salary_in_usd > 100000;


-- 5.Display records where company_location is 'US'.

SELECT *
FROM salaries 
WHERE company_location = 'US';


-- 6.Sort employees by salary_in_usd in descending order.

SELECT *
FROM salaries
ORDER BY salary_in_usd DESC;

-- 7.Show top 3 highest paid employees.

SELECT job_title, salary_in_usd, MAX(salary_in_usd)
FROM salaries 
GROUP BY job_title,salary_in_usd
LIMIT 3;

SELECT * 
FROM salaries
LIMIT 3;


-- 8.Count total number of employees.

SELECT job_title,Count(*)
FROM salaries
GROUP BY job_title;

-- 9.Find minimum and maximum salary.

SELECT  salary_in_usd, MIN(salary_in_usd) AS MINI_Salary, MAX(salary_in_usd) AS MAX_Salary
FROM salaries 
GROUP BY salary_in_usd;

-- 10.Show employees whose remote_ratio is 0.

SELECT *
FROM salaries 
WHERE remote_ratio = 0;

-- 11.Count number of employees for each experience_level.

SELECT experience_level,COUNT(*)
FROM salaries 
GROUP BY experience_level;

-- 12.Find average salary for each job_title.

SELECT job_title, AVG(salary_in_usd) AS AVG_Salary
FROM salaries 
GROUP BY job_title;

-- 13.Show total salary paid per company_location.

SELECT company_location, SUM(salary_in_usd) AS Total_Salary
FROM salaries 
GROUP BY company_location;

-- 14.Find number of employees in each company_size.

SELECT company_size,COUNT(job_title)
FROM salaries 
GROUP BY company_size;

-- 15.Show job titles where average salary is greater than 150000.

SELECT job_title, AVG(salary_in_usd) AS AVG_Salary
FROM salaries 
WHERE salary_in_usd > 150000
GROUP BY job_title;

-- 16.Find highest salary for each company_location.

SELECT company_location, MAX(salary_in_usd) AS MAX_Salary
FROM salaries 
GROUP BY company_location;

-- 17.Show total employees working remotely (remote_ratio = 100).

SELECT COUNT(*) AS total_remote_employees
FROM salaries
WHERE remote_ratio = 100;


-- 18.Count employees grouped by employment_type.

SELECT employment_type, COUNT(*)
FROM salaries 
GROUP BY employment_type;

-- 19.Find average salary for each experience_level.

SELECT experience_level, AVG(salary_in_usd) AS AVG_Salary
FROM salaries 
GROUP BY experience_level;

-- 20.Show top 2 highest paying job titles based on average salary.

SELECT job_title, AVG(salary_in_usd) AS AVG_Salary
FROM salaries 
GROUP BY job_title
ORDER BY AVG_Salary DESC
LIMIT 2;


-- 100 query 
/*
SET 1
✅ Level 1 (Basic)

1 Show all records from the table.

2 Display only job_title and salary_in_usd.

3 Find employees whose experience_level = 'SE'.

4 Show employees where salary_in_usd > 120000.

5 Sort employees by work_year in descending order.

*/
-- 1 Show all records from table 
SELECT * 
FROM salaries;

-- 2 .DISPLAY only job_title and salary_in_usd

SELECT job_title, salary_in_usd
FROM salaries;

-- 3 Find employees whose experience_level = 'SE'.

SELECT *
FROM salaries
WHERE experience_level = 'SE';

-- 4 Show employees where salary_in_usd > 120000.
 
 SELECT * 
 FROM salaries
 WHERE salary_in_usd > 120000;
 
 -- 5 Sort employees by work_year in descending order.

SELECT *
FROM salaries 
ORDER BY work_year DESC;

/*
Level 2 (Filtering + Grouping)

6 Count employees for each experience_level.

7 Find average salary for each company_location.

8 Show total salary paid per job_title.

9 Find highest salary per experience_level.

 10 Show job titles where average salary > 150000.

*/

SELECT experience_level, COUNT(*)
FROM salaries 
GROUP BY experience_level;

SELECT company_location, AVG(salary_in_usd) AS AVG_Salary
FROM salaries
GROUP BY company_location;

SELECT job_title, SUM(salary_in_usd) AS Total_Salary
FROM salaries 
GROUP BY job_title;

SELECT experience_level, MAX(salary_in_usd) AS MAX_Salary
FROM salaries
GROUP BY experience_level;

SELECT job_title, AVG(salary_in_usd) AS AVG_Salary
FROM salaries 
WHERE salary_in_usd > 150000
GROUP BY job_title;

/*
🔹 SET 2
✅ Level 1

Show employees where company_location = 'US'.

Display employees with remote_ratio = 100.

Show employees with company_size = 'M'.

Sort employees by salary_in_usd ascending.

Show top 5 highest paid employees.
*/

SELECT *
FROM salaries
WHERE company_location = 'US';

SELECT *
FROM salaries 
WHERE remote_ratio = 100;

SELECT *
FROM salaries 
WHERE company_size = 'M';

SELECT * 
FROM salaries 
ORDER BY salary_in_usd;

SELECT *
FROM salaries 
ORDER BY salary_in_usd DESC
LIMIT 5;

/*
Level 2

Count employees per employment_type.

Find average salary per company_size.

Show total employees per company_location.

Find minimum salary per job_title.

Show experience levels where average salary > 130000.
*/

SELECT employment_type, COUNT(*)
FROM salaries 
GROUP BY employment_type;

SELECT company_size, AVG(salary_in_usd) AS AVG_Salary
FROM salaries 
GROUP BY company_size;

SELECT company_location, COUNT(*) AS Total_Employee
FROM salaries 
GROUP BY company_location;

SELECT job_title, MIN(salary_in_usd) AS MINI_Salary
FROM salaries 
GROUP BY job_title;

SELECT experience_level, AVG(salary_in_usd) AS AVG_Salary
FROM salaries 
WHERE salary_in_usd > 130000
GROUP BY experience_level;

/*
SET 3
✅ Level 1
Show employees with salary_in_usd between 90000 and 200000.

Display employees working in 'AU'.

Show employees hired in 2024.

Find employees whose job_title contains 'Engineer'.

Show employees with employment_type = 'FT'.
*/

SELECT *
FROM salaries 
WHERE salary_in_usd BETWEEN 90000 AND 200000;

SELECT *
FROM salaries 
WHERE company_location = 'AU';

SELECT *
FROM salaries 
WHERE work_year = 2024;

SELECT *
FROM salaries
WHERE job_title LIKE '%Engineer%';

SELECT *
FROM salaries 
WHERE employment_type = 'FT';

/*
Level 2
Count employees per work_year.

Find total salary per work_year.

Show average salary per employment_type.

Find highest salary per company_size.

Show job titles having more than 5 employees.
*/

SELECT work_year, COUNT(*)
FROM salaries 
GROUP BY work_year;

SELECT work_year, SUM(salary_in_usd) AS Total_Salary
FROM salaries 
GROUP BY work_year;

SELECT employment_type, AVG(salary_in_usd) AS AVG_Salary
FROM salaries 
GROUP BY employment_type;

SELECT company_size, MAX(salary_in_usd) AS Highest_Salary
FROM salaries 
GROUP BY company_size;

SELECT job_title, COUNT(*) 
FROM salaries
GROUP BY job_title
HAVING COUNT(*) > 5;


/*
 SET 4
✅ Level 1
Show employees where experience_level != 'SE'.

Display unique job_title values.

Show employees where remote_ratio = 0.

Sort employees by job_title.

Show bottom 5 lowest paid employees.
*/

SELECT *
FROM salaries 
WHERE experience_level NOT IN('SE');

SELECT DISTINCT job_title 
FROM salaries;

SELECT *
FROM salaries 
WHERE remote_ratio = 0;

SELECT *
FROM salaries 
ORDER BY job_title DESC;

SELECT *
FROM salaries
ORDER BY salary_in_usd ASC
LIMIT 5;

/*
Level 2
Count employees per remote_ratio.

Find average salary per remote_ratio.

Show total salary per company_size.

Find maximum salary per employment_type.

Show company locations with more than 10 employees.
*/
SELECT remote_ratio, COUNT(*)
FROM salaries 
GROUP BY remote_ratio;

SELECT remote_ratio, AVG(salary_in_usd) 
FROM salaries 
GROUP BY remote_ratio;

SELECT company_size, SUM(salary_in_usd)
FROM salaries 
GROUP BY company_size;

SELECT employment_type, MAX(salary_in_usd) MAX_Salary
FROM salaries 
GROUP BY employment_type;

SELECT company_location, COUNT(*) 
FROM salaries 
GROUP BY company_location
HAVING COUNT(*) >10;

/*
 SET 5
✅ Level 1
Show employees with salary_currency = 'USD'.

Display employees from 'AE'.

Show employees with salary < 100000.

Show employees with company_size = 'L'.

Display employees sorted by company_location.
*/

SELECT *
FROM salaries 
WHERE salary_currency = 'USD';

SELECT *
FROM salaries 
WHERE company_location ='AE';

SELECT *
FROM salaries 
WHERE salary_in_usd < 100000;

SELECT * 
FROM salaries 
WHERE company_size = 'L';

SELECT *
FROM salaries 
ORDER BY company_location;

/*
Level 2
Find average salary per job_title for US companies only.

Count employees per job_title in 2024.

Show highest salary per work_year.

Find total salary paid to SE employees.

Show employment types having more than 20 employees.
*/
SELECT job_title, AVG(salary_in_usd) AS AVG_Salary
FROM salaries 
WHERE company_location = 'US'
GROUP BY job_title;

SELECT job_title, COUNT(*)
FROM salaries 
WHERE work_year = 2024
GROUP BY job_title;

SELECT job_title, MAX(salary_in_usd) AS Highest_Salary
FROM salaries 
WHERE work_year = 2024
GROUP BY job_title;

SELECT SUM(salary_in_usd) AS Total_Salary
FROM salaries
WHERE experience_level = 'SE';

SELECT employment_type, COUNT(*) 
FROM salaries 
GROUP BY employment_type
HAVING COUNT(*) >20;

/*
SET 6
✅ Level 1
Show employees whose job_title starts with 'Machine'.

Display employees with salary_in_usd >= 180000.

Show employees working remotely partially (remote_ratio = 50).

Display distinct company_location.

Show employees ordered by experience_level.
*/
SELECT *
FROM salaries 
WHERE job_title Like ('Machine%');

SELECT *
FROM salaries 
WHERE salary_in_usd >= 180000;

SELECT *
FROM salaries
WHERE remote_ratio = 50;

SELECT DISTINCT company_location 
FROM salaries ;

SELECT *
FROM salaries 
ORDER BY experience_level;

/* Level 2
Find average salary per company_location for SE employees.

Count employees per company_size in 2024.

Show minimum salary per experience_level.

Find job titles with average salary < 100000.

Show company sizes where total salary > 1,000,000.
*/
SELECT company_location, AVG(salary_in_usd) 
FROM salaries 
WHERE experience_level = 'SE'
GROUP BY company_location;

SELECT company_size, COUNT(*)
FROM salaries 
WHERE work_year = 2024
GROUP BY company_size ;

SELECT experience_level, MIN(salary_in_usd)
FROM salaries 
GROUP BY experience_level;

SELECT job_title, AVG(salary_in_usd) AS AVG_Salary
FROM salaries
GROUP BY job_title
HAVING AVG_Salary < 100000;

SELECT company_size, SUM(salary_in_usd) AS Total_Salary
FROM salaries 
GROUP BY company_size
HAVING Total_salary > 1000000;

/*SET 7
✅ Level 1
Show employees with employment_type = 'PT'.

Display employees hired before 2024.

Show employees with salary exactly 90000.

Show employees working in medium companies ('M').

Display top 10 records ordered by salary.
*/
SELECT *
FROM salaries 
WHERE employment_type = 'PT';

SELECT *
FROM salaries
WHERE work_year < 2024;

SELECT *
FROM salaries
WHERE salary_in_usd = 90000;

SELECT *
FROM salaries 
WHERE company_size = 'M';

SELECT *
FROM salaries 
ORDER BY salary_in_usd DESC
LIMIT 10;

/*
 Level 2
Count employees per work_year and experience_level.

Find average salary per job_title for large companies.

Show total salary per employment_type.

Find highest salary per remote_ratio.

Show job titles with more than 3 SE employees.
*/
SELECT 
    work_year,
    experience_level,
    COUNT(*) AS employee_count
FROM salaries
GROUP BY work_year, experience_level;

-- ChatGPT Solution
SELECT 
    work_year,
    experience_level,
    COUNT(*) AS employee_count
FROM salaries
GROUP BY work_year, experience_level
ORDER BY work_year, experience_level;

SELECT job_title, AVG(salary_in_usd) AS AVG_Salary
FROM salaries
WHERE company_size = 'L'
GROUP BY job_title
ORDER BY AVG_Salary DESC;

SELECT employment_type, SUM(salary_in_usd) AS Total_Salary
FROM salaries 
GROUP BY employment_type;

SELECT remote_ratio, MAX(salary_in_usd) AS Highest_Salary
FROM salaries
GROUP BY remote_ratio;

SELECT job_title, COUNT(*) AS SE_Count
FROM salaries
WHERE experience_level = 'SE'
GROUP BY job_title
HAVING COUNT(*) > 3
ORDER BY SE_Count DESC;


/*
 SET 8
✅ Level 1
Show employees whose residence is 'US'.
Display employees where company and residence country are same.
Show employees with company_size != 'S'.
Display employees sorted by salary_currency.
Show employees hired after 2023.
*/
SELECT *
FROM salaries 
WHERE employee_residence = 'US';

SELECT *
FROM salaries 
WHERE company_location = employee_residence;

SELECT *
FROM salaries 
WHERE company_size != 'S';

SELECT *
FROM salaries 
WHERE company_size NOT IN('S');

SELECT *
FROM salaries 
WHERE NOT company_size ='S';

SELECT *
FROM salaries
ORDER BY salary_currency;

SELECT *
FROM salaries
WHERE work_year > 2023;

/*
 Level 2
Count employees where residence != company_location.
Find average salary per employee_residence.
Show total salary per remote_ratio.
Find maximum salary per job_title in 2024.
Show company locations with average salary > 140000.
*/
SELECT COUNT(*)
FROM salaries 
WHERE employee_residence != company_location;

SELECT employee_residence, AVG(salary_in_usd) 
FROM salaries
GROUP BY employee_residence;

SELECT remote_ratio, SUM(salary_in_usd) AS Total_Salary
FROM salaries 
GROUP BY remote_ratio;

SELECT job_title, Max(salary_in_usd)
FROM salaries
WHERE work_year = 2024
GROUP BY job_title;

SELECT company_location, AVG(salary_in_usd) AS AVG_Salary
FROM salaries 
WHERE salary_in_usd > 140000
GROUP BY company_location;