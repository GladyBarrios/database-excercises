SELECT * FROM employees.employees;

select database();
SHOW CREATE DATABASE employees; 

SHOW DATABASES;
 USE chipotle; 
 SHOW CREATE DATABASE chipotle;
 
 USE elo_db;
 
 SHOW CREATE DATABASE elo_db;
 
 USE employees;
 
 Show tables; 
  describe employees;
 describe departments;
 SELECT * FROM ablbums;
 -- 2
 USE albums_db;
 Show tables;
 describe albums;

 -- 3
 SHOW CREATE DATABASE albums_db;
 -- 3a
SELECT * FROM albums_db.albums;
## 31 rows 
-- 3b
SELECT DISTINCT artist from albums;
## 23 diffrent artists 
-- 3c
 describe albums;
 ## just the id is the primary key 
 -- 3d
 SELECT release_date, artist, name From albums 
 Where release_date < '1970'; 
 select min(release_date) from albums;
 select max(release_date)from albums;
 
 -- 4 
 -- 4a 
 SELECT artist, name FROM albums
 WHERE artist = 'PINK FLOYD';
 
 -- two albums by PF are the dark side of the moon and the wall
 
 -- 4b 
 SELECT artist, name, release_date FROM albums
 WHERE name = 'Sgt. Pepper\'s Lonely Hearts Club Band';
 
 -- the year is 1967
 
 -- 4c 
 SELECT genre, name FROM albums 
 WHERE name = 'NEVERMIND';
 -- its grundge alternative rock 
 
 -- 4d 
 
 SELECT name, release_date FROM albums 
 Where release_date BETWEEN 1990 AND 1999;
 
-- 11 rows  relaease dates 
 
 -- 4e
  SELECT name, artist, sales FROM albums
  WHERE sales < 20; 
  
 select * from albums
where sales < 20;
-- 4f

SELECT * from albums 
WHERE genre = 'Rock';

-- not showing all becasue this code is only asking for rock and no other words 

-- where excersises 
use employees;
SELECT * FROM employees.employees;
#2 
SELECT count(*) First_name FROM employees 
where First_name IN ('Irena', 'Vidya','Maya');
-- 709 people with this name 
 #3
 SELECT count(*) First_name FROM employees 
where First_name = 'irena'
OR First_name = 'Vidya'
OR First_name = 'Maya';
-- yes it matched the number of rows 
#4

 SELECT First_name, gender FROM employees 
where gender = 'M'
AND 
(First_name = 'irena'
OR First_name = 'Vidya'
OR First_name = 'Maya');

#5 
Select Last_name FROM employees
Where Last_name Like 'E%'; 
#7330 last names that start with e

#6
Select count(Last_name) FROM employees
Where Last_name Like 'E%' OR 
Last_name Like '%E';
## 30723

#7 
Select Last_name, First_name FROM employees
Where Last_name Like 'E%' AND 
Last_name Like '%E';

## 899

#8
SELECT count(*) Hire_date from employees
Where Hire_date LIkE '199%';
-- 135214
#9
SELECT Hire_date from employees
Where Hire_date LIkE '%-12-25';
-- 789
#10
SELECT Hire_date from employees
Where Hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25';

SELECT Hire_date from employees
Where Hire_date LIkE '%-12-25' AND
Hire_date like '199%';
-- 11
Select count(*)Last_name FROM employees
Where Last_name Like '%q%';
-- 1873 

-- 12
Select Last_name FROM employees
Where Last_name Like '%q%' AND 
Last_name NOT LIKE '%qu%';

SELECT count(*) First_name, gender FROM employees 
where First_name IN ('Irena', 'Vidya','Maya')
GROUP BY gender;

SELECT first_name, last_name
FROM employees
ORDER BY last_name;

SELECT first_name, last_name
FROM employees
ORDER BY last_name DESC;
SELECT first_name, last_name
FROM employees
ORDER BY last_name ASC;
SELECT first_name, last_name
FROM employees
ORDER BY last_name DESC, first_name ASC;
-- q2 
SELECT First_name, Last_name FROM employees 
where First_name IN ('Irena', 'Vidya','Maya')
Order by First_name; 
-- q3
SELECT First_name, Last_name FROM employees 
where First_name IN ('Irena', 'Vidya','Maya')
Order by First_name, last_name; 
-- irena acton
-- vidia zweizig 

-- 4 
SELECT First_name, Last_name FROM employees 
where First_name IN ('Irena', 'Vidya','Maya')
Order by Last_name, First_name;
-- irena acton
-- maya zyda

-- 5 
Select Last_name, First_name, Emp_no FROM employees
Where Last_name Like 'E%' AND 
Last_name Like '%E'
ORDER BY emp_no;
-- erde ramzi 10021
-- erde tadahiro
-- 6
Select Last_name, First_name, hire_date FROM employees
Where Last_name Like 'E%' AND 
Last_name Like '%E'
ORDER BY hire_date DESC;
-- 899 employees returned and the newest is eldridge teiji
-- and the oldest erde serji 

-- 7
SELECT Hire_date, birth_date, first_name, Last_name from employees
Where Birth_date LIkE '%-12-25' AND
Hire_date like '199%'
ORDER BY Birth_date, Hire_date DESC;
-- 33936	1952-12-25	Khun	Bernini	M	1999-08-3
-- 362 employees retunred 

SELECT *
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date DESC, hire_date ASC;

-- 412745	1964-12-25	Douadi	Pettis	M	1990-05-04
SELECT DISTINCT Last_name FROM employees
ORDER BY last_name DESC;
-- zykh
-- zyda
-- zwicker 
SELECT *
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%-12-25'
Order by hire_date
LIMIT 5;

Select UPPER(CONCAT(Last_name,' ', First_name)) AS full_name FROM employees
Where Last_name Like 'E%' AND 
Last_name Like '%E';

SELECT DATEDIFF(now(),hire_date)
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%-12-25';

 SELECT *
FROM employees;

Select * From salaries
ORDER BY salary ASC; 
-- largest salary is 158220
-- smalles salary 38623
SELECT 
    CONCAT(SUBSTR(first_name, 1, 1),
                    SUBSTR(last_name, 1, 4),
                    '_',
                    SUBSTR(birth_date, 6, 2),
                    SUBSTR(birth_date, 3, 2)) AS username,
    first_name,
    last_name,
    birth_date
FROM
    employees;
    
    
SELECT 
	CONCAT(SUBSTR(first_name, 1,1),
		SUBSTR (Last_name, 1,4),'_',
	SUBSTR (birth_date, 6,2),
	SUbSTR (birth_date, 3,2)) AS USERNAME, 
First_name, 
Last_name, 
Birth_date
FROM employees; 

USe employees; 
SELECT COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%';
SELECT COUNT(*) FROM employees;

SELECT first_name, COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%'
GROUP BY first_name;

SELECT concat(first_name, " ", last_name) AS full_name, count(*) AS n_same_full_name
FROM employees
GROUP BY full_name
HAVING n_same_full_name >= 5;

SELECT last_name, count(*) AS n_same_last_name
FROM employees
GROUP BY last_name
HAVING n_same_last_name < 150;

Select distinct Title FROM titles;
-- titles
-- senior engineer 
-- staff 
-- engineer 
-- senior staff assistant engineer technique leader manager 
-- 3
Select Last_name FROM employees
Where Last_name Like 'E%' AND 
Last_name Like '%E'
Group by last_name;

Select distinct Last_name FROM employees
Where Last_name Like 'E%' AND 
Last_name Like '%E';
-- 4
Select Last_name, first_name FROM employees
Where Last_name Like 'E%' AND 
Last_name Like '%E'
Group by last_name, first_name;
-- 5
Select Last_name FROM employees
Where Last_name Like '%q%' AND 
Last_name NOT LIKE '%qu%'
Group by last_name;
-- chleq, lindqvist, qiwen
-- 6 
Select count(Last_name) FROM employees
Where Last_name Like '%q%' AND 
Last_name NOT LIKE '%qu%'
Group by last_name;

SELECT count(*) First_name, gender FROM employees 
where First_name IN ('Irena', 'Vidya','Maya')
GROUP BY gender;

SELECT
    CONCAT(SUBSTR(first_name, 1, 1),
                    SUBSTR(last_name, 1, 4),
                    '_',
                    SUBSTR(birth_date, 6, 2),
                    SUBSTR(birth_date, 3, 2)) AS username,
count(*) AS Number_simmilar
FROM
    employees
Group by username
HAVING NUMBER_SIMMILAR >2;

-- there is duplicate usernames
-- 793 duplicate usernames
SELECT DATEDIFF(now(),hire_date)
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%-12-25';

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
  ON de.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager, d.dept_name AS department_Name
FROM employees AS e
JOIN dept_manager As de
ON  de.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
Where de.to_date = '9999-01-01'
ORDER BY DEPARTMENT_NAME ASC;

SELECT d.dept_name AS department_Name, gender, 
CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager 
FROM employees AS e
JOIN dept_manager As de
ON  de.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
Where de.to_date = '9999-01-01'
AND gender = 'f'
ORDER BY DEPARTMENT_NAME ASC;

SELECT t.title AS title, count(de.dept_no) AS Count
FROM titles AS t
JOIN dept_emp AS de
ON de.emp_no = t.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no
Where t.to_date = '9999-01-01'
AND d.dept_no = 'd009'
Group by title;


SELECT t.title AS title, count(de.dept_no) AS Count
FROM titles AS t
JOIN dept_emp AS de
ON de.emp_no = t.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no
Where t.to_date = '9999-01-01'
AND d.dept_no = 'd009'
Group by title;
-- 5
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager, d.dept_name AS department_Name, s.salary AS SALARY
FROM employees AS e
JOIN salaries AS s
ON s.emp_no = e.emp_no
JOIN dept_manager As de
ON  de.emp_no = s.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
Where de.to_date = '9999-01-01'
AND s.to_date = '9999-01-01'
ORDER BY DEPARTMENT_NAME ASC;
-




 