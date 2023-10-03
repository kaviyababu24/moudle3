DROP DATABASE testDb;
CREATE DATABASE testDb;

SHOW DATABASES;
CREATE TABLE testDb.members
(
members_id int,
name varchar(100)
);

SELECT * 
FROM testDb.members;

CREATE TABLE testDb.committees(
committee_id int,
name varchar(100)
);
SELECT * 
FROM testDb.committees;

INSERT INTO testDb.members
values (1, 'aa'), (2, 'bb'), (3, 'cc'), (4, 'dd'); 

INSERT INTO testDb.committees
values (1, 'aa'), (2, 'bb'), (3, 'cc'), (4, 'dd');         

SELECT m.members_id, m.name AS member, c.committee_id, c.name AS committee
FROM testDb.members m
INNER JOIN testDb.committees c ON c.name = m.name;

SELECT m.members_id, m.name AS member, c.committee_id, c.name AS committee
FROM testDb.members m
LEFT JOIN testDb.committees c USING(name);

SELECT m.members_id, m.name AS member, c.committee_id, c.name AS committee
FROM testDb.members m
RIGHT JOIN testDb.committees c ON c.name = m.name;

SELECT m.members_id, m.name AS member, c.committee_id, c.name AS committee
FROM testDb.members m
CROSS JOIN testDb.committees c;

SELECT *
FROM testDb.members 
WHERE name LIKE 'A%' ;

DELIMITER //
CREATE PROCEDURE testDb.get_members_info()
BEGIN 
    SELECT * FROM testDb.members;
END//

DELIMITER;

CALL testDb.get_members_info();