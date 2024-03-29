SHOW DATABASES;
CREATE DATABASE COUNTRY;
USE COUNTRY;
CREATE TABLE STATE( ID INT PRIMARY KEY , STUDENT_NAME VARCHAR(50) , AGE INT NOT NULL );
DESC STATE;
INSERT INTO STATE (ID , STUDENT_NAME , AGE) 
VALUES(1 , 'RAHUL',22);
SELECT * FROM STATE;

INSERT INTO STATE (ID , STUDENT_NAME , AGE) 
VALUES(2 , 'RAHUL',22) ,
(3 , 'RAJA',12),
(4 , 'LOVELY',32);
UPDATE STATE 
SET STUDENT_NAME = 'RAGINI' WHERE ID = 2;
DELETE FROM STATE 
WHERE STUDENT_NAME = 'LOVELY';

DROP TABLE STATE;

DROP DATABASE COUNTRY;

SHOW DATABASES;

DROP DATABASE BANK_DB;

CREATE DATABASE BANK_DB;
SHOW DATABASES;
USE BANK_DB;
-- TASK 1 

CREATE TABLE EMPLOYEES (
EMP_ID INT PRIMARY KEY NOT NULL,
EMP_NAME VARCHAR(70) NOT NULL,
DESIG VARCHAR(20) DEFAULT  'PROBATION',
DEPT VARCHAR(30)
);
DESC EMPLOYEES;
-- EXERCISE - 2
INSERT INTO EMPLOYEES (EMP_ID , EMP_NAME , DESIG, DEPT) 
VALUES(101, 'RAJU','MANAGER','LOAN' ),
(102, 'SHAM','CASHIER','CASH' ),
(103, 'PAUL','ASSOCIATE','IT' ),
(104, 'ALEX','ACCOUNTANT','ACCOUNT' ),
(105, 'VICTOR','ASSOCIATE','DEPOSIT' );

SELECT * FROM EMPLOYEES;

DELETE FROM EMPLOYEES WHERE EMP_ID = 102;
-- EXERCISE - 3
SELECT * FROM EMPLOYEES WHERE DESIG = 'ASSOCIATE';

SELECT * FROM EMPLOYEES LIMIT 2;

SELECT EMP_ID , EMP_NAME FROM EMPLOYEES LIMIT 1;


SELECT * FROM EMPLOYEES;

-- EXERCISE - 4 
UPDATE EMPLOYEES
SET DEPT = "NONIT" WHERE EMP_NAME = 'PAUL';
