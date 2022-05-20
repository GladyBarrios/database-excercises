
USE titles;
Select * from titles;

#2
SELECT DISTINCT title FROM titles
Group by title;
-- senior engineer 
-- staff
-- engineer
-- seniorstaff
-- assistant engineer
-- technique leader
-- manager 

-- 3 Write a query to to find a list of all unique last 
-- names of all employees 
-- that start and end with 'E' using GROUP BY.

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' 
AND LAST_name LIKE '%E'
Group BY last_name; 

-- 4
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%' 
AND LAST_name LIKE '%E'
Group BY last_name; 

-- this gave me the same responce

-- 5

SELECT (DISTINCT last_name)
FROM employees
WHERE last_name LIKE '%q%' AND 
 last_name NOT LIKE '%qu%';
 
 -- only three names popped up 
--  cheleq
--  lindqvist
--  qiwen 

-- 6
SELECT count(DISTINCT last_name)
FROM employees
WHERE last_name LIKE '%q%' AND 
 last_name NOT LIKE '%qu%';
 -- three
 
 -- 7
 SELECT count(*) first_name, last_name, gender 
 FROM employees
WHERE first_name IN ('Irena', 'Vidya','Maya')
GROUP BY Gender;

SELECT count(gender), gender FROM employees
WHERE first_name = 'Irena' OR 'Vidya'
OR 'Maya'
Group by Gender;

-- 144 M
-- 97 F

-- 8

SELECT Lower(concat(SUBSTR(First_name,1,1),
SUBSTR(Last_Name,1,4), '_',
substr(birth_date,6,2), 
SUBSTR(birth_date,3,2)))
as USERNAME, count(*) AS count_of_usernames
FROM employees
Group BY username
HAVING count_of_usernames > 1 ;

-- 13251 rows 

