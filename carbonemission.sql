CREATE DATABASE carbon_emission;
CREATE TABLE carbon_emission.users (
UID INT PRIMARY KEY,
NAME VARCHAR(50),
Email varchar(100),
Password varchar(100)
);

SELECT*
FROM carbon_emission.users;

INSERT INTO carbon_emission.users
VALUES("001","GGG","jjj@gmail.com","123"),
      ("002","YYY","xxx@gmail.com","678");
      
      -------------------------------------------------------------
      
DROP TABLE carbon_emission.transportation;
      
CREATE TABLE carbon_emission.transportation (
TID INT PRIMARY KEY,
UID INT NOT NULL,
Model1 VARCHAR(50) NOT NULL,
Method VARCHAR(50) NOT NUll,
trans_ce DEC(2,3)
);

SELECT
*FROM  carbon_emission.transportation;


INSERT INTO carbon_emission.transportation
VALUES(1,1,"truck","road",1.98),
      (2,2,"van","road",4.88);
      
SELECT
*FROM  carbon_emission.transportation;
      
--------------------------------------------------------------------------------

DROP TABLE carbon_emission.energy;

CREATE TABLE carbon_emission.energy (
EID INT PRIMARY KEY,
UID INT NOT NULL,
energy_con INT NOT NULL,
energy_ce DEC(2,3)
);


SELECT
*FROM  carbon_emission.energy;

INSERT INTO carbon_emission.energy
VALUES(1,1,150,1.98),
      (2,2,180,4.88);
      
SELECT
*FROM  carbon_emission.energy;

      






