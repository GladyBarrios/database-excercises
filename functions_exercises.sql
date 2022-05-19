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
