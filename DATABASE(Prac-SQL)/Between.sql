USE DB05;
/*
BETWEEN Operator – 10 Questions
1 Find employees whose salary_in_usd BETWEEN 80000 AND 150000.
2 Show employees whose work_year BETWEEN 2021 AND 2023.
3 Display employees whose salary BETWEEN 50000 AND 100000.
4 Find employees whose remote_ratio BETWEEN 50 AND 100.
5 Show employees whose salary_in_usd BETWEEN 100000 AND 200000.
6 Display employees whose salary BETWEEN 60000 AND 90000.
7 Find employees whose salary_in_usd BETWEEN 70000 AND 120000.
8 Show employees whose work_year BETWEEN 2020 AND 2022.
9 Display employees whose salary BETWEEN 100000 AND 180000.
10 Find employees whose salary_in_usd BETWEEN 90000 AND 130000.
*/
SELECT *
FROM salaries 
WHERE salary_in_usd BETWEEN 80000 AND 150000;
 
SELECT *
FROM salaries 
WHERE work_year BETWEEN 2021 AND 2023;

SELECT *
FROM salaries 
WHERE salary BETWEEN 50000 AND 100000;

SELECT *
FROM salaries 
WHERE remote_ratio BETWEEN 50 AND 100;

SELECT *
FROM salaries 
WHERE salary_in_usd BETWEEN 100000 AND 200000;

SELECT *
FROM salaries 
WHERE salary BETWEEN 60000 AND 90000;

SELECT *
FROM salaries 
WHERE salary_in_usd BETWEEN 70000 AND 120000;

SELECT *
FROM salaries 
WHERE work_year BETWEEN 2020 AND 2022;

SELECT *
FROM salaries 
WHERE salary BETWEEN 100000 AND 120000;

SELECT *
FROM salaries 
WHERE salary_in_usd BETWEEN 90000 AND 130000;