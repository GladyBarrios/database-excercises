SELECT * FROM employees.employees;
-- 2
SELECT first_name, last_name FROM employees.employees
WHERE first_name IN ('Irena', 'Vidya','Maya')
ORDER BY FIRST_name;
# first name on the list is 
-- irena reutenauer 
--  Vidya	Simmen	M	



 -- 3
 SELECT first_name, last_name FROM employees.employees
WHERE first_name IN ('Irena', 'Vidya','Maya')
ORDER BY FIRST_name, last_name;
# irena acton 
--  Vidya	Simmen	M



-- 4
SELECT last_name, first_name FROM employees.employees
WHERE first_name IN ('Irena', 'Vidya','Maya')
ORDER BY last_name, first_name;

# same first name irena acton 
-- last name zyda maya 

-- 5 

SELECT last_name, first_name, emp_no 
FROM employees
WHERE last_name LIKE 'E%' 
AND LAST_name LIKE '%E';

# first on the list is ERDE RAMZI 10021
#last on the list is ERDE TADAHIRO 499648

-- 6

SELECT last_name, first_name, hire_date 
FROM employees
WHERE last_name LIKE 'E%' 
AND LAST_name LIKE '%E'
ORDER BY hire_date;
# newest is ELDRIDGE TEIJI hired in 1999-11-27
# oldest is EDRE sergi 1985-02-02

-- 7
SELECT hire_date, Birth_date, first_name, Last_name
FROM employees 
WHERE hire_date BETWEEN '1990-12-25' AND '1999-12-25'
 AND Birth_date LIKE '%-12-25'
 ORDER BY hire_date DESC;
 
 #287 employees
 #oldest emplyee khurn
 #youngest employee 
 SELECT hire_date, Birth_date, first_name, Last_name
FROM employees 
WHERE hire_date BETWEEN '1990-12-25' AND '1999-12-25'
 AND Birth_date LIKE '%-12-25'
 ORDER BY hire_date DESC, Hire_date ASC;
 SELECT * FROM employees.employees;
