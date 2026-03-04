USE DB05;
/*Membership Operator (IN / NOT IN) – 10 Questions
Display employees whose job_title is either 'Data Scientist' or 'Data Analyst'.
Show employees working in company_location IN ('US','UK','CA').
Find employees whose experience_level IN ('SE','EX').
Display employees whose remote_ratio IN (0,100).
Show employees whose company_size IN ('L','M').
Find employees whose employee_residence IN ('IN','US','CA').
Display employees whose job_title NOT IN ('Data Engineer','ML Engineer').
Show employees whose experience_level NOT IN ('EN').
Find employees whose company_location NOT IN ('US').
Display employees whose remote_ratio NOT IN (50,100).*/

-- 1 Display employees whose job_title is either 'Data Scientist' or 'Data Analyst'.
SELECT *
FROM salaries 
WHERE job_title IN ('Data Scientist', 'Data Analyst');

-- 2 Show employees working in company_location IN ('US','UK','CA').
SELECT *
FROM salaries 
WHERE company_location IN ('US','UK','CA');

-- 3 Find employees whose experience_level IN ('SE','EX').
SELECT * 
FROM salaries 
WHERE experience_level IN ('SE','EX');

-- 4 Display employees whose remote_ratio IN (0,100).
SELECT *
FROM salaries
WHERE remote_ratio IN (0,100);

-- 5 Show employees whose company_size IN ('L','M').
SELECT * 
FROM salaries 
WHERE company_size IN ('L','M');

-- 6 Find employees whose employee_residence IN ('IN','US','CA').
SELECT *
FROM salaries 
WHERE employee_residence IN ('IN','US','CA');

-- 7 Display employees whose job_title NOT IN ('Data Engineer','ML Engineer').
SELECT *
FROM salaries 
WHERE job_title NOT IN ('Data Engineer','ML Engineer');

-- 8 Show employees whose experience_level NOT IN ('EN').
SELECT *
FROM salaries 
WHERE experience_level NOT IN ('EN');

-- 9 Find employees whose company_location NOT IN ('US').
SELECT *
FROM salaries 
WHERE company_location NOT IN ('US');

-- 10 Display employees whose remote_ratio NOT IN (50,100).
SELECT *
FROM salaries 
WHERE remote_ratio NOT IN (50,100);