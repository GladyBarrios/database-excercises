SELECT * FROM employees.departments;


SHOW TABLES;
-- 3
 USE employees; 
 -- 4
 Show tables;
 -- dept 
 -- dept employee
 -- dept manager 
 --  employees
 -- salaries 
 -- titles 
 
 
 -- 5
  describe employees;
  -- emp_no
  -- birth_Date
  -- first name
  -- last name 
  -- gender
  -- and hire date 

  # Which table(s) do you think contain a numeric type column?
 describe employees;
 -- emp_no would be numeric 

 # Which table(s) do you think contain a string type column? 
describe employees;
 -- first name, last name, and gender are string type 
 # Which table(s) do you think contain a date type column?
describe employees;
 -- hire date and the birthday would be date types 
 -- this would only be for the employees table 
 
 DESCRIBE dept_emp;
-- this one has all three types, it had date types it has string types--
-- it also has numeric--
 
 DESCRIBE dept_manager;
-- this one has all three types, it had date types it has string types--
-- it also has numeric--

DESCRIBE salaries;
-- this has string and date types

DESCRIBE titles;
-- this one has strings and date and numeric 


 -- What is the relationship between the employees and the departments tables?
describe departments;
describe employees;
 -- departments only has string types 
 -- where as employees has all three data types 
## question 10 
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