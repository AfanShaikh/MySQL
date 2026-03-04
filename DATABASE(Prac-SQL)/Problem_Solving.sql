USE DBPRAC;

SELECT *
FROM salaries
ORDER BY salary_in_usd ;

-- LEVEL 1 - Basic
-- 1. Show all records from the table.
SELECT *
FROM salaries;


-- 2. Display only job_title and salary_in_usd.

SELECT DISTINCT job_title, salary_in_usd
FROM salaries;

-- 3.Find all employees whose experience_level is 'SE'.

SELECT * 
FROM salaries
WHERE experience_level = 'SE';


-- 4.Show employees where salary_in_usd is greater than 100000

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

-- 7.	Show top 3 highest paid employees.

SELECT *
FROM salaries
ORDER BY salary_in_usd DESC
LIMIT 3;

-- 8.	Count total number of employees.

SELECT job_title, COUNT(*)
FROM salaries
GROUP BY job_title;

-- 9. Find minimum and maximum salary.

SELECT salary_in_usd, MIN(salary_in_usd) AS MINI_Salary_in_usd , MAX(salary_in_usd) AS MAX_Salary_in_usd
FROM salaries 
GROUP BY salary_in_usd;

-- 10.	Show employees whose remote_ratio is 0.

SELECT * 
FROM salaries 
WHERE remote_ratio = '0';

-- 11.Count number of employees for each experience_level.

SELECT experience_level, COUNT(*)
FROM salaries 
GROUP BY experience_level;

-- 12.	Find average salary for each job_title.

SELECT job_title, AVG(salary_in_usd)
FROM salaries
GROUP BY job_title;

-- 13.	Show total salary paid per company_location.

SELECT company_location, SUM(salary_in_usd)
FROM salaries
GROUP BY company_location;

-- 14.	Find number of employees in each company_size.

SELECT company_size, COUNT(*)
FROM salaries
GROUP BY company_size;

-- 15.	Show job titles where average salary is greater than 150000.

SELECT job_title, AVG(salary_in_usd) AS AVG_Salary_In_Usd
FROM salaries
WHERE salary_in_usd > 150000
GROUP BY job_title;

-- 16.	Find highest salary for each company_location.

SELECT company_location, MAX(salary_in_usd) AS MAX_Salary_In_Usd
FROM salaries 
GROUP BY company_location;

-- 17.	Show total employees working remotely (remote_ratio = 100).

SELECT job_title, COUNT(*) AS Total_ratio
FROM salaries
WHERE remote_ratio = 100
GROUP BY job_title;

-- 18.	Count employees grouped by employment_type.

SELECT employment_type, COUNT(*) AS Total_Employees
FROM salaries 
GROUP BY employment_type;

-- 19.	Find average salary for each experience_level.

SELECT experience_level, AVG(salary_in_usd)
FROM salaries 
GROUP BY experience_level;

-- 20.	Show top 2 highest paying job titles based on average salary.

SELECT job_title, AVG(salary_in_usd) AS AVG_Salary_in_usd
FROM salaries 
GROUP BY job_title
LIMIT 2;

/*
21.	Find employees who earn more than overall average salary.
22.	Find employees who earn more than average salary of their own job_title.
23.	Find second highest salary in the table.
24.	Show highest paid employee in each company_location.
25.	Find job titles that have more than 2 employees.
26.	Show employees whose salary is equal to the maximum salary of their job_title.
27.	Find employees working in the same location as highest paid employee.
28.	Find job_title with highest average salary.
29.	Show employees whose salary is below average salary of their company_location.
30.	Create a new column using CASE that categorizes salary as:
•	High (>150000)
•	Medium (80000–150000)
•	Low (<80000)
*/


-- 21.	Find employees who earn more than overall average salary.

SELECT *
FROM salaries
WHERE salary_in_usd >(
SELECT AVG(salary_in_usd)
FROM salaries
);

-- 22.	Find employees who earn more than average salary of their own job_title.

SELECT * 
FROM salaries
JOIN (SELECT job_title, AVG(salary_in_usd) AS AVERAGE_SALARY 
FROM salaries 
GROUP BY job_title) AS T 
ON salaries.job_title = T.job_title
WHERE salary_in_usd > AVERAGE_SALARY;  


-- 23.	Find second highest salary in the table.

SELECT  MAX(salary_in_usd) AS Second_Highest
FROM salaries 
WHERE salary_in_usd <(
SELECT Max(salary_in_usd) AS MAX_Salary
FROM salaries);

-- 24.	Show highest paid employee in each company_location

SELECT company_location, MAX(salary_in_usd) AS Highest_Emp
FROM salaries 
GROUP BY company_location
ORDER BY Highest_Emp DESC;

-- window function solution 
SELECT *
FROM 
(
SELECT *, DENSE_RANK() OVER (PARTITION BY company_location ORDER BY salary_in_usd DESC) AS salary_ranking 
FROM salaries 
) AS T
WHERE salary_ranking = 2; 

-- 25 Find job titles that have more than 2 employees.
SELECT 
    job_title,
    COUNT(*) 
FROM salaries
GROUP BY job_title
HAVING COUNT(*) > 2;

-- 26 Show employees whose salary is equal to the maximum salary of their job_title.

SELECT *
FROM salaries AS S
JOIN
(
SELECT job_title, MAX(salary_in_usd) AS MAX_Salary
FROM salaries 
GROUP BY job_title) AS M
ON S.job_title = M.job_title
AND S.salary_in_usd = M.max_salary;


-- ChatGpt Solution
SELECT S.*
FROM salaries AS S
JOIN
(
SELECT job_title, MAX(salary_in_usd) AS MAX_Salary
FROM salaries 
GROUP BY job_title) AS M
ON S.job_title = M.job_title
AND S.salary_in_usd = M.max_salary;


-- 27 Find employees working in the same location as highest paid employee
SELECT *
FROM salaries
WHERE employee_residence =
(
    SELECT company_location
    FROM salaries
    WHERE salary_in_usd =
    (
        SELECT MAX(salary_in_usd)
        FROM salaries
    )
);

-- 28. Find job_title with highest average salary.
SELECT job_title, AVG(salary_in_usd) AS AVG_Salary
FROM salaries
GROUP BY job_title
ORDER BY AVG_Salary DESC
LIMIT 1;

-- 29. Show employees whose salary is below the average salary of their company_location.

SELECT *
FROM salaries 
WHERE salary_in_usd < (
SELECT AVG(salary_in_usd) AS AVG_Salary
FROM salaries 
GROUP BY company_location
);

-- ChatGpt Solution
SELECT *
FROM salaries s1
WHERE salary_in_usd < (
    SELECT AVG(salary_in_usd)
    FROM salaries s2
    WHERE s1.company_location = s2.company_location
);

-- 30. Create a new column using CASE that categorizes salary as: • High (>150000) • Medium (80000–150000) • Low (<80000)

SELECT *,
CASE 
    WHEN salary_in_usd > 150000 THEN 'High'
    WHEN salary_in_usd BETWEEN 80000 AND 150000 THEN 'Medium'
    ELSE 'Low'
END AS salary_category
FROM salaries;