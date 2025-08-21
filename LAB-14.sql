
-------------------------------------------------LAB-14--------------------------------------------


--CREATING TABLE AND INSERTING DATA--


-- CREATE DEPARTMENT TABLE
CREATE TABLE DEPARTMENT (
    DID INT PRIMARY KEY,
    DNAME VARCHAR(50)
);

-- CREATE STUDENT_DATA TABLE
CREATE TABLE STUDENT_DATA (
    RNO INT PRIMARY KEY,
    NAME VARCHAR(50),
    CITY VARCHAR(50),
    DID INT,
    FOREIGN KEY (DID) REFERENCES DEPARTMENT(DID)
);

-- CREATE ACADEMIC TABLE
CREATE TABLE ACADEMIC (
    RNO INT PRIMARY KEY,
    SPI DECIMAL(3,1),
    BKLOG INT,
    FOREIGN KEY (RNO) REFERENCES STUDENT_DATA(RNO)
);

-- INSERT DATA INTO DEPARTMENT
INSERT INTO DEPARTMENT (DID, DNAME) VALUES
(10, 'COMPUTER'),
(20, 'ELECTRICAL'),
(30, 'MECHANICAL'),
(40, 'CIVIL');

-- INSERT DATA INTO STUDENT_DATA
INSERT INTO STUDENT_DATA (RNO, NAME, CITY, DID) VALUES
(101, 'RAJU', 'RAJKOT', 10),
(102, 'AMIT', 'AHMEDABAD', 20),
(103, 'SANJAY', 'BARODA', 40),
(104, 'NEHA', 'RAJKOT', 20),
(105, 'MEERA', 'AHMEDABAD', 30),
(106, 'MAHESH', 'BARODA', 10);

-- INSERT DATA INTO ACADEMIC
INSERT INTO ACADEMIC (RNO, SPI, BKLOG) VALUES
(101, 8.8, 0),
(102, 9.2, 2),
(103, 7.6, 1),
(104, 8.2, 4),
(105, 7.0, 2),
(106, 8.9, 3);




--1-Display details of students who are from computer department.--

SELECT RNO,NAME,CITY
FROM STUDENT_DATA 
WHERE DID IN (SELECT DID FROM DEPARTMENT WHERE DNAME = 'COMPUTER');

--2-Displays name of students whose SPI is more than 8.--

SELECT NAME
FROM STUDENT_DATA
WHERE RNO IN (SELECT RNO FROM ACADEMIC WHERE SPI > 8);

--3-Display details of students of computer department who belongs to Rajkot city.--

SELECT RNO,NAME,CITY
FROM STUDENT_DATA 
WHERE CITY = 'RAJKOT' AND DID IN (SELECT DID FROM DEPARTMENT WHERE DNAME = 'COMPUTER');


--4-Find total number of students of electrical department--

SELECT COUNT(RNO) AS TOTAL_ELEC
FROM STUDENT_DATA
WHERE DID IN (SELECT DID FROM DEPARTMENT WHERE DNAME = 'ELECTRICAL');

--5-Display name of student who is having maximum SPI--

SELECT NAME 
FROM STUDENT_DATA
WHERE RNO IN (SELECT RNO FROM ACADEMIC WHERE SPI IN (SELECT MAX(SPI) FROM ACADEMIC));

--6-Display details of students having more than 1 backlog.--

SELECT NAME , CITY
FROM STUDENT_DATA
WHERE RNO IN (SELECT RNO FROM ACADEMIC WHERE BKLOG > 1);



--------------------------------------------PART-B------------------------------------------------

--1-Display name of students who are either from computer department or from mechanical department--

SELECT NAME 
FROM STUDENT_DATA
WHERE DID IN (SELECT DID FROM DEPARTMENT WHERE DNAME = 'COMPUTER' OR DNAME = 'ELECTRICAL');

--2-Display name of students who are in same department as 102 studying in--

SELECT NAME
FROM STUDENT_DATA
WHERE DID IN (SELECT DID FROM DEPARTMENT WHERE DID IN (SELECT DID FROM STUDENT_DATA WHERE RNO = 102 ))



--------------------------------------PART-C-----------------------------------------------------

--1-Display name of students whose SPI is more than 9 and who is from electrical department--

SELECT NAME 
FROM STUDENT_DATA 
WHERE RNO IN(SELECT RNO FROM ACADEMIC WHERE SPI > 9) AND DID IN (SELECT DID FROM DEPARTMENT WHERE DNAME = 'ELECTRICAL');

--2-Display name of student who is having second highest SPI.-

SELECT NAME 
FROM STUDENT_DATA
WHERE RNO IN (SELECT TOPSPI FROM ACADEMIC ORDER BY SPI DESC (SELECT ))