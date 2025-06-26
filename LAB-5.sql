--LAB-5--




----------------------------------------------------------------PART-A------------------------------------------------------




--1-Add two more columns City VARCHAR (20) and Pincode INT.--

ALTER TABLE DEPOSIT
ADD CITY VARCHAR(20) , PINCODE INT;

SELECT * FROM DEPOSIT;

--2-Add column state VARCHAR(20)--

ALTER TABLE DEPOSIT
ADD STATE VARCHAR(20);

SELECT * FROM DEPOSIT;

--3-Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).--

ALTER TABLE DEPOSIT
ALTER COLUMN CNAME VARCHAR(35);

SELECT * FROM DEPOSIT;

--4-Change the data type DECIMAL to INT in amount Column.--

ALTER TABLE DEPOSIT
ALTER COLUMN AMOUNT INT;

SELECT * FROM DEPOSIT;

--5-Delete Column City from the DEPOSIT table.--

ALTER TABLE DEPOSIT
DROP COLUMN CITY;

SELECT * FROM DEPOSIT;

--6-Rename Column ActNo to ANO.--

SP_RENAME 'DEPOSIT.ACTNO','ANO';
	
SELECT * FROM DEPOSIT;

--7-Change name of table DEPOSIT to DEPOSIT_DETAIL.--

SP_RENAME 'DEPOSIT','DEPOSIT_DETAIL';

SELECT * FROM DEPOSIT_DETAIL;





----------------------------------------------------------------PART-B------------------------------------------------------




--1-Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.--

SP_RENAME 'DEPOSIT_DETAIL.ADATE','AOPENDATE';

SELECT * FROM DEPOSIT_DETAIL;

--2-Delete Column AOPENDATE from the DEPOSIT_DETAIL table. --

ALTER TABLE DEPOSIT_DETAIL
DROP COLUMN AOPENDATE;

SELECT * FROM DEPOSIT_DETAIL;

--3-Rename Column CNAME to CustomerName. --

SP_RENAME 'DEPOSIT_DETAIL.CNAME','CUSTOMERNAME';

SELECT * FROM DEPOSIT_DETAIL;

--4-Add Column country.--

ALTER TABLE DEPOSIT_DETAIL
ADD COUNTRY VARCHAR(20);

SELECT * FROM DEPOSIT_DETAIL;





----------------------------------------------------------------PART-C------------------------------------------------------



CREATE TABLE STUDENT_DETAIL (Enrollment_No VARCHAR(20) , NAME VARCHAR(25) , CPI DECIMAL(5,2) , Birthdate DATETIME );

--1-Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null). --

ALTER TABLE STUDENT_DETAIL
ADD CITY VARCHAR(20) NOT NULL, BACKLOG INT;

SELECT * FROM STUDENT_DETAIL;

--2-Add column department VARCHAR (20) Not Null.-

ALTER TABLE STUDENT_DETAIL
ADD DEPARTMENT VARCHAR(20) NOT NULL;

SELECT * FROM STUDENT_DETAIL;

--3-Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).--

ALTER TABLE STUDENT_DETAIL
ALTER COLUMN NAME VARCHAR(35);

SELECT * FROM STUDENT_DETAIL;

--4-Change the data type DECIMAL to INT in CPI Column.--

ALTER TABLE STUDENT_DETAIL
ALTER COLUMN CPI INT;

SELECT * FROM STUDENT_DETAIL;

--5-Delete Column City from the student_detail table.--

ALTER TABLE STUDENT_DETAIL
DROP COLUMN CITY;

SELECT * FROM STUDENT_DETAIL;

--6-Rename Column Enrollment_No to ENO.--

SP_RENAME 'STUDENT_DETAIL.Enrollment_No','ENO';

SELECT * FROM STUDENT_DETAIL;

--7-Change name of table student_detail to STUDENT_MASTER.--

SP_RENAME 'student_detail','STUDENT_MASTER';

SELECT * FROM STUDENT_MASTER;




--DELETE, Truncate, Drop Operation--
----------------------------------------------------------------PART-A------------------------------------------------------

ALTER TABLE DEPOSIT_DETAIL
DROP COLUMN STATE,COUNTRY;

SELECT * FROM DEPOSIT_DETAIL;

--1-Delete all the records of DEPOSIT_DETAIL table having amount less than and equals to 4000.--

DELETE
FROM DEPOSIT_DETAIL
WHERE AMOUNT<=4000;

SELECT * FROM DEPOSIT_DETAIL;

--2-Delete all the accounts CHANDI BRANCH.--

DELETE
FROM DEPOSIT_DETAIL
WHERE BNAME='CHANDI';

SELECT * FROM DEPOSIT_DETAIL;

--3-Delete all the accounts having account number (ANO) is greater than 102 and less than 105.--

DELETE 
FROM DEPOSIT_DETAIL
WHERE ANO>102 AND ANO<105;

SELECT * FROM DEPOSIT_DETAIL;

--4-Delete all the accounts whose branch is ‘AJNI’ or ‘POWAI’--

DELETE 
FROM DEPOSIT_DETAIL
WHERE BNAME='AJNI' OR BNAME='POWAI';

SELECT * FROM DEPOSIT_DETAIL;

--5-Delete all the accounts whose account number is NULL.--

DELETE 
FROM DEPOSIT_DETAIL
WHERE ANO IS NULL;

SELECT * FROM DEPOSIT_DETAIL;

--6-Delete all the remaining records using Delete command.--

DELETE 
FROM DEPOSIT_DETAIL;

SELECT * FROM DEPOSIT_DETAIL;

--7-Delete all the records of Deposit_Detail table. (Use Truncate)--

TRUNCATE TABLE DEPOSIT_DETAIL;

--8-Remove Deposit_Detail table. (Use Drop)--

DROP TABLE DEPOSIT_DETAIL;




----------------------------------------------------------------PART-B------------------------------------------------------


CREATE TABLE EMPLOYEE_MASTER(EmpNo INT , City  VARCHAR(20) , EmpName VARCHAR(25) , SALARY DECIMAL(8,2) , JoiningDate  DATETIME );

INSERT INTO EMPLOYEE_MASTER(EmpNo  , City  ,EmpName  , SALARY  , JoiningDate  ) VALUES (101,'Rajkot','Keyur',12000.00,'2002-01-02');
INSERT INTO EMPLOYEE_MASTER(EmpNo  , City  ,EmpName  , SALARY  , JoiningDate   ) VALUES (102,'Ahemdabad','Hardik',14000.00,'2004-02-04');
INSERT INTO EMPLOYEE_MASTER(EmpNo  , City  ,EmpName  , SALARY  , JoiningDate  ) VALUES (103,'Baroda','Kajal',15000.00,'2006-03-06');
INSERT INTO EMPLOYEE_MASTER(EmpNo  , City  ,EmpName  , SALARY  , JoiningDate   ) VALUES (104,'Ahemdabad','Bhoomi',12500.00,'2005-06-05');
INSERT INTO EMPLOYEE_MASTER(EmpNo  , City  ,EmpName , SALARY  , JoiningDate  ) VALUES (105,'Rajkot','Harmit',14000.00,'2004-02-04');
INSERT INTO EMPLOYEE_MASTER(EmpNo  , City  ,EmpName , SALARY  , JoiningDate   ) VALUES (106,'Jamnagar','Mitesh',5000.00,'2001-09-01');
INSERT INTO EMPLOYEE_MASTER(EmpNo  , City  ,EmpName , SALARY  , JoiningDate   ) VALUES (107,'Morbi','Meera',7000.00,NULL);
INSERT INTO EMPLOYEE_MASTER(EmpNo  , City  ,EmpName , SALARY  , JoiningDate   ) VALUES (108,NULL,'Kishan',10000.00,'2003-02-03');

SELECT * FROM EMPLOYEE_MASTER;

DROP TABLE EMPLOYEE_MASTER;

--1-Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.--

DELETE 
FROM EMPLOYEE_MASTER
WHERE SALARY>=14000;

SELECT * FROM EMPLOYEE_MASTER;

--2-Delete all the Employees who belongs to ‘RAJKOT’ city.--

DELETE
FROM EMPLOYEE_MASTER
WHERE CITY='RAJKOT';

SELECT * FROM EMPLOYEE_MASTER;

--3-Delete all the Employees who joined after 1-1-2007.--

DELETE
FROM EMPLOYEE_MASTER
WHERE JoiningDate<'2007-01-01';

SELECT * FROM EMPLOYEE_MASTER;

--4-Delete the records of Employees whose joining date is null and Name is not null.--

DELETE 
FROM EMPLOYEE_MASTER
WHERE JoiningDate IS NULL AND EmpName IS NOT NULL;

SELECT * FROM EMPLOYEE_MASTER;

--5-Delete the records of Employees whose salary is 50% of 20000.--

DELETE 
FROM EMPLOYEE_MASTER
WHERE SALARY=(0.5*20000);

SELECT * FROM EMPLOYEE_MASTER;

--6-Delete the records of Employees whose City Name is not empty.--

DELETE
FROM EMPLOYEE_MASTER
WHERE CITY IS NOT NULL;

SELECT * FROM EMPLOYEE_MASTER;

--7-Delete all the records of Employee_MASTER table. (Use Truncate)--

TRUNCATE TABLE EMPLOYEE_MASTER;

--8-Remove Employee_MASTER table. (Use Drop)--

DROP TABLE EMPLOYEE_MASTER;