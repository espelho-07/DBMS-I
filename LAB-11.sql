--LAB--11--

-- 1. Create STU_INFO table
CREATE TABLE STU_INFO (
    Rno INT PRIMARY KEY,
    Name VARCHAR(50),
    Branch VARCHAR(10)
);

-- Insert data into STU_INFO
INSERT INTO STU_INFO (Rno, Name, Branch) VALUES
(101, 'Raju', 'CE'),
(102, 'Amit', 'CE'),
(103, 'Sanjay', 'ME'),
(104, 'Neha', 'EC'),
(105, 'Meera', 'EE'),
(106, 'Mahesh', 'ME');

-- 2. Create RESULT table
CREATE TABLE RESULT (
    Rno INT PRIMARY KEY,
    SPI DECIMAL(4,2)
);

-- Insert data into RESULT
INSERT INTO RESULT (Rno, SPI) VALUES
(101, 8.8),
(102, 9.2),
(103, 7.6),
(104, 8.2),
(105, 7.0),
(107, 8.9);  

-- 3. Create EMPLOYEE_MASTER table
CREATE TABLE EMPLOYEE_MASTER (
    EmployeeNo VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(50),
    ManagerNo VARCHAR(10)
);

-- Insert data into EMPLOYEE_MASTER
INSERT INTO EMPLOYEE_MASTER (EmployeeNo, Name, ManagerNo) VALUES
('E01', 'Tarun', NULL),
('E02', 'Rohan', 'E02'),
('E03', 'Priya', 'E01'),
('E04', 'Milan', 'E03'),
('E05', 'Jay', 'E01'),
('E06', 'Anjana', 'E04');


----------------------------------------------------PART-A------------------------------------------------

--1-Combine information from student and result table using cross join or Cartesian product.--

SELECT *
FROM STU_INFO , RESULT , EMPLOYEE_MASTER;

--2-Perform inner join on Student and Result tables.--

SELECT *
FROM STU_INFO
INNER JOIN RESULT
ON STU_INFO.Rno = RESULT.Rno;

--3-Perform the left outer join on Student and Result tables.--

SELECT *
FROM STU_INFO
LEFT OUTER JOIN RESULT
ON STU_INFO.Rno = RESULT.Rno;

--4-Perform the right outer join on Student and Result tables.--

SELECT *
FROM STU_INFO
RIGHT OUTER JOIN RESULT
ON STU_INFO.Rno = RESULT.Rno;

--5-erform the full outer join on Student and Result tables. --

SELECT *
FROM STU_INFO
FULL OUTER JOIN RESULT
ON STU_INFO.Rno = RESULT.Rno;

--6-Display Rno, Name, Branch and SPI of all students.--

SELECT *
FROM STU_INFO
FULL OUTER JOIN RESULT
ON STU_INFO.Rno = RESULT.Rno;

--7-Display Rno, Name, Branch and SPI of CE branch’s student only.--

SELECT *
FROM STU_INFO
FULL OUTER JOIN RESULT
ON STU_INFO.Rno = RESULT.Rno
WHERE Branch = 'CE';

--8-Display Rno, Name, Branch and SPI of other than EC branch’s student only. --

SELECT *
FROM STU_INFO
FULL OUTER JOIN RESULT
ON STU_INFO.Rno = RESULT.Rno
WHERE Branch NOT IN ('EC');

--9-Display average result of each branch.--

SELECT Branch , AVG(SPI) AS AVG_SPI
FROM STU_INFO
INNER JOIN RESULT
ON STU_INFO.Rno = RESULT.Rno
GROUP BY Branch;

--10-Display average result of CE and ME branch.--

SELECT Branch , AVG(SPI) AS AVG_SPI
FROM STU_INFO
INNER JOIN RESULT
ON STU_INFO.Rno = RESULT.Rno
GROUP BY Branch
HAVING Branch = 'CE' OR Branch = 'ME';

--11-Display Maximum and Minimum SPI of each branch.--

SELECT Branch , MAX(SPI) AS MAX_SPI , MIN(SPI) AS MIN_SPI
FROM STU_INFO
INNER JOIN RESULT
ON STU_INFO.Rno = RESULT.Rno
GROUP BY Branch;

--12-Display branch wise student’s count in descending order.--

SELECT Branch , COUNT(NAME) AS STUDT_COUNT
FROM STU_INFO
INNER JOIN RESULT
ON STU_INFO.Rno = RESULT.Rno
GROUP BY Branch
ORDER BY COUNT(NAME) DESC;



---------------------------------------------PART-B-------------------------------------------------------


--1-Display average result of each branch and sort them in ascending order by SPI.--

SELECT Branch , AVG(SPI) AS AVG_SPI
FROM STU_INFO
INNER JOIN RESULT
ON STU_INFO.Rno = RESULT.Rno
GROUP BY Branch
ORDER BY AVG_SPI;

--2-Display highest SPI from each branch and sort them in descending order.--

SELECT Branch , MAX(SPI) AS MAX_SPI
FROM STU_INFO
INNER JOIN RESULT
ON STU_INFO.Rno = RESULT.Rno
GROUP BY Branch
ORDER BY MAX_SPI DESC;



----------------------------------------------------PART-C--------------------------------------------------


--1-Retrieve the names of employee along with their manager’s name from the Employee table.--

SELECT E.NAME AS EMP_NAME , M.NAME AS MAN_NAME
FROM EMPLOYEE_MASTER E INNER JOIN EMPLOYEE_MASTER M
ON  E.EmployeeNo = M.ManagerNo;



