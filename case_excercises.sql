use employees;

SELECT * FROM employees.dept_emp;
-- 1
SELECT
    Distinct(emp_no), dept_no, from_date, to_date, 
    IF(to_date = '9999-01-01', True, False) AS is_current_employee
FROM dept_emp;

USE employees;
-- 2
SELECT first_name, Last_name, 
   CASE
       WHEN last_name LIKE 'A%' OR Last_name LIKE 'H%' THEN 'A-H'
       WHEN Last_name Like 'I%' OR last_name LIKE 'Q%' THEN 'I-Q'
       WHEN last_name LIKE 'R%' OR Last_name LIKE 'Z%' THEN 'R-Q'
   END AS alpha_group
FROM employees;
SELECT first_name, Last_name, 
   CASE
       WHEN last_name LIKE 'A%' OR last_name LIKE 'B%' OR last_name LIKE 'C%' OR last_name LIKE 'D%' OR last_name LIKE 'E%' OR last_name LIKE 'F%' OR last_name LIKE 'G%' OR last_name LIKE 'H%' THEN 'A-H'
       WHEN Last_name Between 'I%' and 'Q%' THEN 'I-Q'
       WHEN last_name BETWEEN 'R%' and 'Z%' THEN 'R-Z'
   END AS alpha_group
FROM employees;

-- 3

SELECT 
Birth_date,
  count(case WHEN birth_date like '195%' THEN '50s_babies' else null end) AS '50s',
  count(case WHEN  Birth_date like '196%' THEN '60s_babies' else null end) AS '60s',
  count(case WHEN birth_date like '197%' THEN '70s_babies' else null end) AS '70s',
   count(case When birth_date like '198%' Then '80s_babies' else null end) AS '80s',
   count(case When birth_date like '200%' Then '2000_babies' else null end) AS '90s'
from employees
GROUP by birth_date
order by birth_date;

SELECT
Birth_date,
	CASE
	WHEN birth_date lIKE '195%' and '1959%' then '50sbabies'
    WHEN birth_date like '196%' and '1969%' then '60sbabies'
	WHEN birth_date like '197%' and '1979%' then '70sbabies'
	WHEN birth_date like '198%' and '1989%' then '80sbabies'
END AS Birthdays_DECADE 
from employees
group by birth_date;

SELECT
  count(case WHEN birth_date like '195%' THEN '50s_babies' else null end) AS '50s',
  count(case WHEN  Birth_date like '196%' THEN '60s_babies' else null end) AS '60s',
  count(case WHEN birth_date like '197%' THEN '70s_babies' else null end) AS '70s',
   count(case When birth_date like '198%' Then '80s_babies' else null end) AS '80s',
   count(case When birth_date like '200%' Then '2000_babies' else null end) AS '90s'
from employees
GROUP by birth_date
order by birth_date;

SELECT
	CASE
	WHEN birth_date lIKE '195%'  then '50sbabies'
    WHEN birth_date like '196%' then '60sbabies'
	WHEN birth_date like '197%'  then '70sbabies'
	WHEN birth_date like '198%'  then '80sbabies'
    ELSE NULL
END AS Birthdays_DECADE, 
count(*) 
from employees
group by birthdays_DECADE;

-- 4
USE employees;

SELECT AVG(salary),
   CASE
       WHEN dept_name IN ('research', 'development') THEN 'R&D'
       WHEN dept_name IN ('sales', 'marketing') THEN 'Sales & Marketing'
       WHEN dept_name IN ('Production', 'Quality Management') THEN 'Prod & QM'
       WHEN dept_name IN ('Human Resources','finance') THEN 'Finance & HR'
       ELSE dept_name
   END AS dept_group
FROM departments as d
JOIN dept_emp de Using (dept_no)
JOIN salaries s using (emp_no)
WHERE s.to_date > now()
AND de.to_date > now()
group by dept_group;



SELECT AVG(salary), d.dept_name
FROM employees as e 
JOIN salaries s using (emp_no)
JOIN dept_emp de Using (emp_no)
Join departments d using (dept_no)
Group by d.dept_name; 

