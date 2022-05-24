use kalpana_1826;
CREATE TEMPORARY TABLE my_numbers(
    n INT UNSIGNED NOT NULL, 
    name VARCHAR(10) NOT NULL
);

Select * from my_numbers;

INSERT INTO my_numbers(n, name) VALUES (1, 'a'), (2, 'b'), (3,'c'), (4, 'd'), (5, 'e');

drop table if exists my_numbers; 

u
Select first_name, Last_name, dept_name
from employees AS e
Join dept_emp AS de Using (emp_no)
Join departments AS d using (dept_no)
WHERE de.to_date > now();



use employees;


CREATE temporary table kalpana_1826.employees_with_departments AS (Select e.first_name, e.Last_name, d.dept_name
from employees AS e
Join dept_emp AS de Using (emp_no)
Join departments AS d using (dept_no)
WHERE de.to_date > now());

select * from kalpana_1826.employees_with_departments;

Select CONCAT(first_name, ' ', Last_name) AS Full_Name from kalpana_1826.employees_with_departments;

ALTER TABLE kalpana_1826.employees_with_departments ADD Full_Name Varchar(200);

UPDATE kalpana_1826.employees_with_departments SET Full_Name = CONCAT(first_name, ' ', Last_name);
-- c and d 
ALTER TABLE kalpana_1826.employees_with_departments DROP COLUMN first_name;
ALTER TABLE kalpana_1826.employees_with_departments DROP COLUMN last_name;
-- i think if we drop all if this info and just start over and not include the first and last name 

-- 2

SELECT * FROM sakila.payment;
Select payment_id, amount from sakila.payment;

CREATE temporary table kalpana_1826.new_temp_table as 
(Select payment_id, amount from sakila.payment);

SELECT * from kalpana_1826.new_temp_table;


ALTER TABLE kalpana_1826.new_temp_table ADD new_amount INT; 

UPDATE kalpana_1826.new_temp_table SET new_amount = amount * 100; 

-- 3
 use employees;
 
 SELECT * FROM employees.salaries;
 
 select dept_name, avg(salary)
 from employees as e
 JOIN salaries s using (emp_no)
 JOIN dept_emp de using (emp_no)
 Join departments d using (dept_no)
 JOIN titles t using (emp_no)
 where de.to_date > now()
 and s.to_date > now()
 group by dept_name;
 

 
 
 
 CREATE temporary table kalpana_1826.Question_3_table as (select dept_name, avg(salary) as 'average'
 from employees as e
 JOIN salaries s using (emp_no)
 JOIN dept_emp de using (emp_no)
 Join departments d using (dept_no)
 JOIN titles t using (emp_no)
 where de.to_date > now()
 and s.to_date > now()
 group by dept_name);
 

SELECT * from kalpana_1826.Question_3_table; 



select std("avg(salary)") from kalpana_1826.Question_3_table;

drop table if exists kalpana_1826.Question_3_table;

-- this is the z-score
SELECT salary,
    (salary - (SELECT AVG(salary) FROM salaries))
    /
    (SELECT stddev(salary) FROM salaries) AS zscore
FROM salaries;
CREATE temporary table kalpana_1826.Question_3_table as (select dept_name, avg(salary) as 'average'
 from employees as e
 JOIN salaries s using (emp_no)
 JOIN dept_emp de using (emp_no)
 Join departments d using (dept_no)
 JOIN titles t using (emp_no)
 where de.to_date > now()
 and s.to_date > now()
 group by dept_name);
 
SELECT * from kalpana_1826.Question_3_table; 


alter table kalpana_1826.Question_3_table add std_dev int;
alter table kalpana_1826.Question_3_table add zscore float;
Alter table kalpana_1826.Question_3_table add comp_avg int;

use employees; 

update kalpana_1826.Question_3_table set std_dev = (select std(salary) from salaries);
update kalpana_1826.Question_3_table set comp_avg = (select AVG(salary) from salaries);
update kalpana_1826.Question_3_table set zscore = ((average - comp_avg) / std_dev);
