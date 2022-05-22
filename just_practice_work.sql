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

