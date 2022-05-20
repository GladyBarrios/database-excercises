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
