SELECT * FROM employees.employees;
USE employees;
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' 
AND LAST_name LIKE '%E'; 
-- 2
 SELECT CONCAT(First_name, Last_name) as full_name 
 FROM employees
WHERE last_name LIKE 'E%' 
AND LAST_name LIKE '%E';

-- 3 
 SELECT UPPER(CONCAT(First_name,' ', Last_name)) as full_name 
 FROM employees
WHERE last_name LIKE 'E%' 
AND LAST_name LIKE '%E';

-- 4
SELECT (1990-01-01,  1999-12-31)
FROM employees 
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
 AND Birth_date LIKE '%-12-25';
 
SELECT *, DATEdiff(now(), hire_date) as Tenure
FROM employees 
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND Birth_date LIKE '%-12-25'; 
-- Use datediff() function to find how many days they have 
-- been working at the company (Hint: 
-- You will also need to use NOW() or CURDATE()),


-- 5 
SELECT * FROM employees.salaries;
SELECT * FROM employees.employees;
SELECT MIN(salary) from salaries;
SELECT Max(salary) from salaries;
-- min 38623
-- max 158220


-- 6

SELECT LOWER(concat(SUBSTR(First_name,1,1),
SUBSTR(Last_Name,1,4), '_',
substr(birth_date,6,2), 
SUBSTR(birth_date,3,2)))
as USERNAME,
first_name, Last_name, Birth_date
FROM employees;
-- correct answer 
-- Select  FROM employees AND 
-- Select SUBSTR(Last_Name,1,4) FROM employees;
--  
-- Select SUBSTR((First_name,1,1)(Last_Name,1,4)) from employees;

