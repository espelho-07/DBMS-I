--LAB-4--

CREATE TABLE CRICKET(NAME VARCHAR(50),CITY VARCHAR(30),AGE INT);

INSERT INTO CRICKET(NAME , CITY , AGE ) VALUES ('SACHIN TENDULKAR' , 'MUMBAI' ,30);
INSERT INTO CRICKET(NAME , CITY , AGE ) VALUES ('RAHUL DRAVID' , 'BOMBAY' ,35);
INSERT INTO CRICKET(NAME , CITY , AGE ) VALUES ('M.S. DHONI' , 'JARKHAND' ,31);
INSERT INTO CRICKET(NAME , CITY , AGE ) VALUES ('SURESH RAINA' ,	'GUJARAT' ,30);

SELECT* FROM CRICKET;




----------------------------------------------------------------PART-A------------------------------------------------------





--1-Create table Worldcup from cricket with all the columns and data.

SELECT *
INTO WORLDCUP
FROM CRICKET
WHERE 1=1;

SELECT* FROM WORLDCUP;






--2-Create table T20 from cricket with first two columns with no data.


SELECT TOP 2*
INTO T20
FROM CRICKET
WHERE 1=0;

SELECT* FROM T20;





--3-Create table IPL From Cricket with No Data.

SELECT *
INTO IPL
FROM CRICKET
WHERE 1=0;

SELECT* FROM IPL;


--4-Select players who are either older than 30 and from 'Mumbai' or exactly 31 years old and not from 'Bombay', and insert them into a new table PLAYER.--


SELECT *
INTO PLAYER
FROM CRICKET
WHERE (AGE>30 AND CITY='MUMBAI') OR (AGE=31 AND CITY!='BOMBAY');

SELECT* FROM PLAYER;


--5-Select players whose age is a prime number or their city belongs to India Country, and insert them into a new table PLAYER_INFO. (Consider Cricketer age between 18 to 55)--

SELECT *
INTO PLAYER_INFO
FROM CRICKET
WHERE AGE IN (19,23,29,31,37,41,43,47,53);

SELECT* FROM PLAYER_INFO;








--6-Select players whose age is a multiple of 5 and insert them into a new table PLAYER_DATA.

SELECT *
INTO PLAYER_DATA
FROM CRICKET
WHERE AGE%5=0;

SELECT* FROM PLAYER_DATA;

--7-Insert the cricketer into IPL table whose city is ‘Jharkhand’--

INSERT INTO IPL(NAME,CITY,AGE)
SELECT*
FROM CRICKET
WHERE CITY='JARKHAND';

SELECT * FROM IPL;




----------------------------------------------------------------PART-B------------------------------------------------------



CREATE TABLE EMPLOYEE(NAME VARCHAR(50),CITY VARCHAR(30),AGE INT);

INSERT INTO EMPLOYEE(NAME , CITY , AGE ) VALUES (' JAY PATEL' , 'RAJKOT' ,30);
INSERT INTO EMPLOYEE(NAME , CITY , AGE ) VALUES (' RAHUL DAVE' , 'BARODA' ,35);
INSERT INTO EMPLOYEE(NAME , CITY , AGE ) VALUES ('  JEET PATEL ' , 'SURAT' ,31);
INSERT INTO EMPLOYEE(NAME , CITY , AGE ) VALUES ('VIJAY RAVAL ' ,	'RAJKOT' ,30);

SELECT* FROM EMPLOYEE;



--1-Create table Employee_detail from Employee with all the columns and data.--

SELECT *
INTO Employee_detail
FROM EMPLOYEE;

SELECT* FROM Employee_detail;


--2-Create table Employee_data from Employee with first two columns with no data.--

SELECT NAME,AGE
INTO Employee_data
FROM EMPLOYEE
WHERE 1=0;

SELECT* FROM Employee_data;

DROP TABLE Employee_data;


--3-Create table Employee_info from Employee with no Data --




SELECT *
INTO Employee_info
FROM EMPLOYEE
WHERE 1=0;


SELECT* FROM Employee_info;



----------------------------------------------------------------PART-C------------------------------------------------------



--1-Insert the Data into Employee_info from Employee whose CITY is Rajkot--

INSERT INTO Employee_info(NAME,CITY,AGE)
SELECT*
FROM EMPLOYEE
WHERE CITY='RAJKOT';

SELECT * FROM Employee_info;

DROP TABLE Employee_info;


--2-Insert the Data into Employee_info from Employee whose age is more than 32--


INSERT INTO Employee_info(NAME,CITY,AGE)
SELECT*
FROM EMPLOYEE
WHERE AGE>32;

SELECT * FROM Employee_info;

