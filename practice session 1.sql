CREATE DATABASE testDb1;

SHOW DATABASES;

CREATE TABLE testDb1.Marks(ID integer, Name varchar (100), Marks integer);

SELECT * FROM testDb1.Marks;

INSERT INTO testDb1.Marks
VALUES (001, 'ashish', 94);

SELECT * FROM testDb1.Marks;

ALTER TABLE testDb1.Marks
ADD Mentor varchar(100);

DESCRIBE testDb1.Marks;

CREATE INDEX new_index
ON testDb1.Marks(NAME);

SELECT Name
FROM testDb1.Marks
WHERE Marks < 80;

SELECT COUNT(*)
FROM testDb1.Marks;

INSERT INTO testDb1.Marks
VALUES (002, 'jo', 74, 'arjun');

SELECT *
FROM testDb1.Marks
ORDER BY Name ASC;

SELECT *
FROM testDb1.Marks
ORDER BY Name DESC;
