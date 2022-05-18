SELECT * FROM employees.departments;

DESCRIBE departments;
DESCRIBE dept_emp;
DESCRIBE dept_manager;
SHOW TABLES;
DESCRIBE departments;
-- this one departments is string type--
DESCRIBE dept_emp;
-- this one has all three types, it had date types it has string types--
-- it also has numeric--
DESCRIBE dept_manager;
-- this one has all three types, it had date types it has string types--
-- it also has numeric--
DESCRIBE employees;
-- this has 3 types 
DESCRIBE salaries;
-- this has string and date types
DESCRIBE titles;
-- this one has strings and date and numeric 
DESCRIBE employees;
-- relationship btween both are employess and department are throguh the 
-- department number and the employee
show create table dept_manager;
-- 'CREATE TABLE `dept_manager` (
--  `emp_no` int NOT NULL,
--  `dept_no` char(4) NOT NULL,
--  `from_date` date NOT NULL,
 -- `to_date` date NOT NULL,
 -- PRIMARY KEY (`emp_no`,`dept_no`),
--  KEY `dept_no` (`dept_no`),
--  CONSTRAINT `dept_manager_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE ON UPDATE RESTRICT,
--  CONSTRAINT `dept_manager_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE ON UPDATE RESTRICT
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1'


-- this was all the questions