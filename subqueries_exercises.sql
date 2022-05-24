SELECT * FROM employees.employees;
-- 1
## first attempt at number one 
SELECT first_name, last_name, hire_date, s.to_date
FROM employees AS e
join salaries AS s
ON s.emp_no = e.emp_no
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE hire_date = '1990-10-22'
)
AND s.to_date = '9999-01-01'; 
## second attempt of adding more subquaries 

SELECT 
    First_name, Last_name
FROM
    employees
WHERE
    hire_date = (SELECT 
            hire_date
        FROM
            employees
        WHERE
            emp_no = '101010')
        AND emp_no IN (SELECT 
            emp_no
        FROM
            dept_emp
        WHERE
            to_date > NOW());

-- results 
-- 55 rows rturned 


-- 2
## first attempt at number 2
Select e.first_name, d.dept_name, de.to_date, e.emp_no
FROM employees AS e
JOIN dept_emp AS de using (emp_no)
join departments AS d using (dept_no)
where first_name In
(SELECT first_name from employees 
where first_name =  'Aamod')
AND de.to_date > now(); 


-- 168 rows 
## adding more subquaries 
-- SELECT first_name from employees 
-- where first_name =  'Aamod';

-- Select to_date from dept_emp
-- Where to_date > now();

Select e.first_name, e.emp_no, de.to_date
FROM employees AS e
JOIN dept_emp AS de using (emp_no)
Where first_name IN
(SELECT first_name from employees 
where first_name =  'Aamod')
AND
de.to_date IN (Select to_date from dept_emp
Where to_date > now());

-- 168

-- 3 


Select count(to_date) from salaries
Where to_date > now();

Select count(*)
FROM employees 
where emp_no 
NOT IN (Select emp_no from salaries
Where to_date > now());

select count(*) # count all the records
from employees # from the employees table
where emp_no not in 
	(select emp_no
	from dept_emp
	where to_date > now()
);
-- 59900 people do not work at the company
Select emp_no from dept_emp
where to_date > now();



-- 4 
SELECT first_name, last_name, gender
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHere to_date > now()
)
AND gender = 'f';

-- 13 rows returned 

-- 5

-- historical average---
select AVG(salary) from salaries;
-- 63,810 avg salary historically 
-- 6
Select emp_no, salary
from salaries s
JOIN employees e using(emp_no)
where salary > (select AVG(salary) from salaries)
AND to_date > now();


select count(emp_no)
from salaries s
join employees e using(emp_no)
where to_date > now() 
and  salary > (select avg(salary) from salaries);
-- total of 154543





-- 6 
Select Distinct(emp_no), salary
from salaries 
where salary > (select AVG(salary) from salaries)
AND to_date > now()
group by emp_no;

-- STD()

select MAX(salary) from salaries where to_date > now();
-- 158220
select std(salary) from salaries where to_date > now();
-- 17309.---
-- going to be subtracting the MAX from the STD

SELECT count(*)
from salaries 
Where to_date > now()
AND salary > (select MAX(salary) from salaries where to_date > now())-
(select std(salary) from salaries where to_date > now());


-- Bonus questions 

-- current femail manager-- they want department names-
Select gender, dept_name 
from employees
Join dept_manager de using (emp_no)
Join departments d using (dept_no)
WHERE gender IN (select gender from employees 
Where gender = 'f')
AND to_date > now(); 

-- BONUS question 2 

Select MAX(salary) from salaries;

Select first_name, Last_name 
FROM employees
Join salaries s using (emp_no)
Where salary = (Select MAX(salary) from salaries
where to_date > now()); 
-- tokuyasu pesch

-- BONUS question 3
Select first_name, Last_name, dep.dept_name
FROM employees
Join salaries s using (emp_no)
JOIN dept_emp de using (emp_no)
JOIN departments dep using (dept_no)
Where salary = (Select MAX(salary) from salaries
where to_date > now()); 

-- hes in sales-- 


