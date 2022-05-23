SELECT * FROM roles;
SELECT * FROM users;
SELECT * FROM join_example_db.users;

use join_example_db;
-- join 
## only recived 4 results 
SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;

-- left join 
SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;
-- recive 6 results 

-- right join 
SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

-- its 5 because of the double role_name from the username plus the commenter option
-- that on one has
 
-- 3
SELECT count(*), users.name as user_name, 
roles.name as role_name
FROM users 
JOIN roles ON users.role_id = roles.id
GROUP BY User_name, role_name;
-- i got the same answer 4 diffrent results 

SELECT count(*), users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id
GROUP BY User_name, role_name;
-- i got back 6 responces 

SELECT count(*), users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id
group by User_name, role_name;

USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_Manager
FROM employees AS e
JOIN dept_Manager AS de
  ON de.emp_no = e.emp_no;


SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees
JOIN emp_no 
  ON emp_no = emp_no
JOIN departments 
  ON dept_no = dept_no;

SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;

use employees;
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Dept_manager, d.dept_name
FROM employees AS e
JOIN dept_manager AS dm
  ON dm.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
Order by Dept_name;

-- question 3
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Manager_name, d.dept_name
FROM employees AS e
JOIN dept_manager AS dm
  ON dm.emp_no = e.emp_no
  JOIN departments AS d
  ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND gender = 'F'
Order by Dept_name;

-- question 4
SELECT t.title AS title, count(de.dept_no) AS Count
FROM titles AS t
JOIN dept_emp AS de
ON de.emp_no = t.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no
Where t.to_date = '9999-01-01'
AND d.dept_no = 'd009'
Group by title;

-- question 5 

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

-- question 6 

Select d.dept_name, count(de.dept_no) AS num_employees, d.dept_no
From departments AS d
JOIN dept_emp AS de
ON de.dept_no = d.dept_no
JOIN titles AS t 
ON t.emp_no = de.emp_no
Where t.to_date = '9999-01-01'
AND de.to_date = '9999-01-01'
Group by d.dept_name
ORDER BY dept_no ASC;

-- 7 

SELECT AVG(s.salary) AS dept_name, d.dept_name
FROM salaries AS s
JOIN dept_emp AS de
ON de.emp_no = s.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE de.to_date = '9999-01-01'
AND s.to_date = '9999-01-01' 
Group by d.dept_name
order by AVG(s.salary) DESC
LIMIT 1;
-- 8 
SELECT first_name, Last_name 
FROM employees AS e
JOIN dept_emp AS de
ON de.emp_no = e.emp_no
JOIN salaries AS s
ON de.emp_no = s.emp_no
WHERE de.to_date = '9999-01-01'
AND s.to_date = '9999-01-01' 
AND de.dept_no = 'd001'
group by first_name , Last_name
order by MAX(s.salary) DESC
LIMIT 1; 
-- 9

SELECT MAX(s.salary) AS salary ,first_name, Last_name, dee.dept_name
FROM departments AS dee
JOIN dept_emp AS de
ON de.dept_no = dee.dept_no
JOIN salaries AS s
ON de.emp_no = s.emp_no
JOIN employees AS e
ON s.emp_no = e.emp_no
join dept_manager AS dm
on e.emp_no = dm.emp_no
WHERE de.to_date = '9999-01-01'
AND s.to_date = '9999-01-01' 
AND dm.to_date = '9999-01-01'
AND de.dept_no = 'd001'
group by first_name , Last_name, dee.dept_name
order by MAX(s.salary) DESC; 
-- 10
Select d.dept_name, AVG(s.salary)
from salaries AS s
JOIN dept_emp AS de
ON de.emp_no = s.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no
group by d.dept_name;

