SELECT * FROM employees.salaries;

Select emp_no, AVG(salary)
from salaries
where to_date NOT LIKE '999%'
Group by emp_no;

SELECT * FROM employees.dept_manager;
SELECT * FROM dept_emp;

SELECT DEPT_No, count(emp_no)
From dept_emp
where to_date LIKE '999%'
group by dept_no; 

select emp_no, count(salary)
FRom salaries
Group by emp_no;



