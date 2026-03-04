USE DB05;

-- CASE STATEMENT

/*1 Create a column categorizing salary level:
High (>150000)
Medium (80000–150000)
Low (<80000)*/
SELECT 
    *,
    CASE
        WHEN salary_in_usd > 150000 THEN 'High'
        WHEN salary_in_usd BETWEEN 80000 AND 150000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_level
FROM
    salaries;

/*2 Categorize remote work type:
Remote (100)
Hybrid (50)
Onsite (0)*/
SELECT 
    *,
    CASE
        WHEN remote_ratio = 100 THEN 'Remote'
        WHEN remote_ratio = 50 THEN 'Hybrid'
        ELSE 'Onsite'
    END AS remote_type
FROM
    salaries;
/*3 Categorize experience_level as:
Junior (EN)
Mid (MI)
Senior (SE)
Executive (EX)*/
SELECT 
    *,
    CASE
        WHEN experience_level = 'EN' THEN 'Junior'
        WHEN experience_level = 'MI' THEN 'MID'
        WHEN experience_level = 'SE' THEN 'Senior'
        ELSE 'Executive'
    END AS experience_category
FROM
    salaries;

/*4 Create salary categories based on salary_in_usd:
Very High (>200000)
High (150000–200000)
Normal (<150000)*/
SELECT 
    *,
    CASE
        WHEN salary_in_usd > 200000 THEN 'Very High'
        WHEN salary_in_usd BETWEEN 150000 AND 200000 THEN 'High'
        ELSE 'Normal'
    END AS salary_category
FROM
    salaries;

/*5 Categorize company_size:
Small (S)
Medium (M)
Large (L)*/

SELECT 
    *,
    CASE
        WHEN company_size = 'S' THEN 'Small'
        WHEN company_size = 'M' THEN 'Medium'
        ELSE 'Large'
    END AS company_category
FROM
    salaries;