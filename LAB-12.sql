CREATE TABLE PERSON (
    PersonID INT PRIMARY KEY,
    PersonName VARCHAR(100) NOT NULL,
    DepartmentID INT NULL,
    Salary DECIMAL(8,2) NOT NULL,
    JoiningDate DATETIME NOT NULL,
    City VARCHAR(100) NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES DEPT(DepartmentID)
);

INSERT INTO PERSON (PersonID, PersonName, DepartmentID, Salary, JoiningDate, City) VALUES
(101, 'Rahul Tripathi', 2, 56000.00, '2000-01-01', 'Rajkot'),
(102, 'Hardik Pandya', 3, 18000.00, '2001-09-25', 'Ahmedabad'),
(103, 'Bhavin Kanani', 4, 25000.00, '2000-05-14', 'Baroda'),
(104, 'Bhoomi Vaishnav', 1, 39000.00, '2005-02-08', 'Rajkot'),
(105, 'Rohit Topiya', 2, 17000.00, '2001-07-23', 'Jamnagar'),
(106, 'Priya Menpara', NULL, 9000.00, '2000-10-18', 'Ahmedabad'),
(107, 'Neha Sharma', 2, 34000.00, '2002-12-25', 'Rajkot'),
(108, 'Nayan Goswami', 3, 25000.00, '2001-07-01', 'Rajkot'),
(109, 'Mehul Bhundiya', 4, 13500.00, '2005-01-09', 'Baroda'),
(110, 'Mohit Maru', 5, 14000.00, '2000-05-25', 'Jamnagar');


CREATE TABLE DEPT (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE,
    DepartmentCode VARCHAR(50) NOT NULL UNIQUE,
    Location VARCHAR(50) NOT NULL
);

INSERT INTO DEPT (DepartmentID, DepartmentName, DepartmentCode, Location) VALUES
(1, 'Admin', 'Adm', 'A-Block'),
(2, 'Computer', 'CE', 'C-Block'),
(3, 'Civil', 'CI', 'G-Block'),
(4, 'Electrical', 'EE', 'E-Block'),
(5, 'Mechanical', 'ME', 'B-Block');



---------------------------------------------------PART-A-----------------------------------------------------

--1-Combine information from Person and Department table using cross join or Cartesian product.--

SELECT *
FROM PERSON , DEPT;

--2-Find all persons with their department name--

SELECT PersonName , DepartmentName
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID;

--3-Find all persons with their department name & code.

SELECT PersonName , DepartmentName , DepartmentCode
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID;

--4-Find all persons with their department code and location.--

SELECT PersonName , DepartmentCode , Location
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID;

--5-Find the detail of the person who belongs to Mechanical department.--

SELECT PERSON.*
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID
WHERE DepartmentName = 'MECHANICAL';

--6-Final person’s name, department code and salary who lives in Ahmedabad city.--

SELECT PersonName , DepartmentCode , Salary , City
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID
WHERE City = 'AHMEDABAD';

--7-Find the person's name whose department is in C-Block. --

SELECT PersonName , Location
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID
WHERE Location = 'C-BLOCK';

--8-Retrieve person name, salary & department name who belongs to Jamnagar city.--

SELECT PersonName , DepartmentName , Salary , City
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID
WHERE City = 'JAMNAGAR';

--9-Retrieve person’s detail who joined the Civil department after 1-Aug-2001. --

SELECT PERSON.*
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID
WHERE DepartmentName = 'CIVIL' AND JoiningDate > '01-AUG-2001';

--10-Display all the person's name with the department whose joining date difference with the current date 
--is more than 365 days. --

SELECT PERSON.*
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID
WHERE DATEDIFF(DAY , JOININGDATE , GETDATE()) > 365;

--11- Find department wise person counts. --

SELECT  COUNT(PersonID) AS PERS_COUNT , DepartmentName
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID
GROUP BY DepartmentName;

--12-Give department wise maximum & minimum salary with department name.--

SELECT  MAX(Salary) AS MAX_SAL , MIN(Salary) AS MIN_SAL , DepartmentName
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID
GROUP BY DepartmentName;

--13- Find city wise total, average, maximum and minimum salary.--

SELECT  MAX(Salary) AS MAX_SAL , MIN(Salary) AS MIN_SAL , AVG(Salary) , City
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID
GROUP BY City;

--14-Find the average salary of a person who belongs to Ahmedabad city.--

SELECT AVG(Salary) AS AVG_SAL_AHM , City
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID
GROUP BY City
HAVING CITY = 'AHMEDABAD';

--15-Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In 
--single column) --












-----------------------------------------------PART-B---------------------------------------------------

--1. Produce Output Like: <PersonName> earns <Salary> from <DepartmentName> department monthly. (In 
--single column) 


--2. Find city & department wise total, average & maximum salaries.--

SELECT  MAX(Salary) AS MAX_SAL , MIN(Salary) AS MIN_SAL , AVG(Salary) AS AVG_SAL , SUM(Salary) AS SUM_SAL, City , DepartmentName
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID
GROUP BY City , DepartmentName;

--3. Find all persons who do not belong to any department.--

SELECT PersonName
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID
WHERE DepartmentName IS NULL;

--4-Find all departments whose total salary is exceeding 100000. --

SELECT SUM(Salary) AS SUM_SAL , DepartmentName
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID
GROUP BY DepartmentName
HAVING SUM(Salary) > 100000;




-------------------------------------------------------------PART-C------------------------------------------

--1. List all departments who have no person. 
--2. List out department names in which more than two persons are working. 
--3. Give a 10% increment in the computer department employee’s salary. (Use Update)