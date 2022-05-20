SELECT * FROM employees.employees;
-- 2
SELECT DISTINCT Last_name FROM employees
Order by Last_name desc 
LIMIT 10;
-- 3
SELECT hire_date, Birth_date, Last_name, emp_no
FROM employees 
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
 AND Birth_date LIKE '%-12-25'
 ORDER by Hire_date
 LIMIT 5;
 -- 4 
--  limit is mpre of asking sql to only do the first of these results, offse is tellling it to 
--  use these but not these results 