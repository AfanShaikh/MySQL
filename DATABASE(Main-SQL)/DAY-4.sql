USE DB05;

-- Range
-- Select All EmpLoyees having salary greater than 1 lakh and less than 2 lakh 

SELECT 
    *
FROM
    salaries
WHERE
    salary_in_usd > 100000
        AND salary_in_usd < 200000;

-- Select All EmpLoyees having salary between 1 lakh and 2 lakh 

SELECT 
    *
FROM
    salaries
WHERE
    salary_in_usd >= 100000
        AND salary_in_usd <= 200000;

SELECT 
    *
FROM
    salaries
WHERE
    salary_in_usd BETWEEN 100000 AND 200000; 

-- membership operator 
SELECT 
    *
FROM
    salaries
WHERE
    job_title = 'AI Engineer';

SELECT 
    *
FROM
    salaries
WHERE
    job_title = 'Data Scientist';

SELECT 
    *
FROM
    salaries
WHERE
    job_title = 'Data Analyst';

SELECT 
    *
FROM
    salaries
WHERE
    job_title = 'AI Engineer';

SELECT 
    *
FROM
    salaries
WHERE
    job_title = 'AI Engineer'
        OR job_title = 'Data Analyst'
        OR job_title = 'Data Scientist'; 

SELECT * 
FROM salaries 
WHERE job_title NOT IN ('AI Engineer', 'Data Analyst', 'Data Scientist');

-- Searching 
SELECT DISTINCT
    job_title
FROM
    salaries
WHERE
    job_title LIKE '%Analyst';


SELECT 
    COUNT(DISTINCT job_title)
FROM
    salaries
WHERE
    job_title LIKE '%Analyst';

SELECT DISTINCT
    job_title
FROM
    salaries
WHERE
    job_title LIKE 'Data%';

SELECT DISTINCT
    job_title
FROM
    salaries
WHERE
    job_title LIKE '%Data%';

SELECT DISTINCT
    employment_type
FROM
    salaries
WHERE
    employment_type LIKE '_T';

SELECT DISTINCT
    employment_type
FROM
    salaries
WHERE
    NOT employment_type LIKE '_T';
    

SELECT 
    *
FROM
    salaries
WHERE
    NOT employment_type LIKE '_T';
    
    
-- Sorting 

SELECT 
    *
FROM
    salaries
ORDER BY salary_in_usd;

SELECT 
    *
FROM
    salaries
ORDER BY salary_in_usd ASC;

SELECT 
    *
FROM
    salaries
ORDER BY salary_in_usd DESC; 

-- MULTIPLE SORTING 

SELECT 
    *
FROM
    salaries
ORDER BY work_year , job_title DESC , salary_in_usd; 

-- GET THE TOP 5 SALARY EARNERS  FROM THE GIVEN TABLE 

SELECT 
    *
FROM
    salaries
ORDER BY salary_in_usd DESC
LIMIT 5;  

-- GET THE SALARY RANKING FROM 6 TO 10 

SELECT 
    *
FROM
    salaries
ORDER BY salary_in_usd DESC
LIMIT 5 OFFSET 5;  