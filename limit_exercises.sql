SELECT * FROM employees.employees;
-- 2
SELECT DISTINCT Last_name FROM employees
Order by Last_name desc 
LIMIT 10;

/* Zykh
Zyda
Zwicker
Zweizig
Zumaque
Zultner
Zucker
Zuberek
Zschoche
Zongker */



-- 3
SELECT hire_date, Birth_date, Last_name, emp_no
FROM employees 
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
 AND Birth_date LIKE '%-12-25'
 ORDER by Hire_date
 LIMIT 5;
 
 -- Alselm	Cappello	243297
-- Utz	Mandell	34335
-- Bouchung	Schreiter	400710
-- Baocai	Kushner	465730
-- Petter	Stroustrup	490744


 -- 4 
 
 SELECT first_name, last_name, emp_no
FROM employees
WHERE hire_date LIKE '199%' 
AND birth_date LIKE '%-12-25'
ORDER BY hire_date
LIMIT 5 OFFSET 45;


