USE albums_db;


SHOW Tables;

DESCRIBE albums;

Select * FROM albums;

-- a. How many rows are in the albums table?

-- 31
-- b. How many unique artist names are in the albums table?
select distinct (artist) from albums;
-- there are 23 unique

-- c. What is the primary key for the albums table?
-- the ID number 

-- d.
select * 
From albums 
Where release_date < 1970;
-- oldest release date was 1967
select * 
From albums 
Where release_date > 2000;
-- newest release date 2011 

-- 4a
Select DISTINCT artist, name 
FROM albums;

SELECT artist, name
FROM albums
WHERE artist = 'Pink Floyd';
-- the dark side of the moon
-- the wall 

-- 4b 
SELECT name, release_date
FROM albums
WHERE albums = "Sgt. Pepper's Lonely Hearts Club Band";
-- 1967
-- 4c
SELECT name, genre
FROM albums
WHERE name = 'Nevermind';

-- grunge, alternative rock 

-- 4d

SELECT *
FROM albums
WHERE release_date BETWEEN 1990 AND 2000;

-- 11 albums 


SELECT * FROM albums 
WHERE sales < 20;
-- 13 albums 

-- 4f it need to be more specific 


