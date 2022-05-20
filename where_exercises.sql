
USE employees;

SELECT database ();

DESCRIBE employees;
SELECT * FROM employees.employees;
-- 2
SELECT first_name, last_name FROM employees.employees
WHERE first_name IN ('Irena', 'Vidya','Maya');
-- i got 709 rows returned 
-- 3 
SELECT first_name, last_name FROM employees
WHERE first_name = 'Irena' OR 
first_name = 'Vidya'
OR 
First_name = 'Maya'; 

 # there is less rows I got 473 
-- 4
SELECT first_name, last_name, Gender FROM employees
WHERE first_name = 'Irena' OR 
first_name = 'Vidya'
OR 
First_name = 'Maya'
AND gender = 'M';
-- 295 records retuned 
SELECT first_name, last_name, gender FROM employees
WHERE Gender = ('M')
 AND first_name = 'Irena' OR 'Vidya'
OR 'Maya';

# 144 rows 
-- 5
SELECT count(*) last_name
FROM employees
WHERE last_name LIKE 'e%';
# 7330 employyees 
-- 6
SELECT count(*) last_name
FROM employees
WHERE last_name LIKE 'E%' 
OR LAST_name LIKE '%E';

 -- retunred 30723 employees
 SELECT count(*) last_name
FROM employees
WHERE last_name LIKE '%e';
-- retunred 24292 rows 31 employees 

-- 7
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' 
AND LAST_name LIKE '%E';
# I got 899 rows returned 

 SELECT count(*) last_name
FROM employees
WHERE last_name LIKE '%e';
##24292 employees 
# I got 1000 rows 

-- 8

SELECT count(*) hire_date
FROM employees 
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';
 #there is 135214
 
 -- 9 
SELECT count(*) hire_date
FROM employees 
WHERE hire_date LIKE '%-12-25';
SELECT hire_date
FROM employees 
WHERE hire_date LIKE '%-12-25';
# 789 born on cristmas 
-- 10 
SELECT hire_date, Birth_date
FROM employees 
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
 AND Birth_date LIKE '%-12-25'; 
 
 #287 retrun 
 
 SELECT hire_date
FROM employees 
WHERE hire_date LIKE '%-12-25',
BETWEEN '1990-12-25' AND '1999-12-25'; 

 -- 11 
 SELECT Count(*) last_name
FROM employees
WHERE last_name LIKE '%q%';

# 1873
-- 12 
 SELECT last_name
FROM employees
WHERE last_name LIKE '%q%' AND 
 last_name NOT LIKE '%qu%';
 
 #547

 #1873
 SELECT Count(*) last_name
FROM employees
WHERE last_name LIKE '%qu%';
# 1326
#1873-1326= 
