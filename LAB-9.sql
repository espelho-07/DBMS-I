--LAB-9--

-----------------------------------------PART-A-------------------------------------------------------------

--1-Display the result of 5 multiply by 30.--

SELECT 5*30;

--2-Find out the absolute value of -25, 25, -50 and 50.--

SELECT ABS(-25) , ABS(25) , ABS(-50) , ABS(50);

--3-Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.--

SELECT CEILING(25.2) , CEILING(25.7) , CEILING(-25.2);

--4-Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2. --

SELECT FLOOR(25.2) , FLOOR(25.7) , FLOOR(-25.2);

--5-Find out remainder of 5 divided 2 and 5 divided by 3.--

SELECT 5%2 , 5%3 ;

--6-Find out value of 3 raised to 2nd power and 4 raised 3rd power.--

SELECT POWER(3, 2) , POWER(4, 3);

--7-Find out the square root of 25, 30 and 50.--

SELECT SQRT(25) , SQRT(30) , SQRT(50);

--8-Find out the square of 5, 15, and 25. --

SELECT SQUARE(5) , SQUARE(15) , SQUARE(25);

--9-Find out the value of PI.--

SELECT PI() as PI_Value;

--10-Find out round value of 157.732 for 2, 0 and -2 decimal points.--

SELECT ROUND(157.732, 0),ROUND(157.732, 2),ROUND(157.732, -2);

--11-Find out exponential value of 2 and 3. --

SELECT EXP(2) , EXP(3);

--12-Find out logarithm having base e of 10 and 2.--

SELECT LOG(10) , LOG(2);

--13- Find out logarithm having base b having value 10 of 5 and 100.--

SELECT LOG10(5) , LOG10(100);

--14-Find sine, cosine and tangent of 3.1415. --

SELECT SIN(3.1415) , COS(3.1415) , TAN(3.1415);

--15- Find sign of -25, 0 and 25.--

SELECT SIGN(-25), SIGN(0), SIGN(25);

--16- Generate random number using function. --

SELECT RAND()*100;



-------------------------------------------------PART-B--------------------------------------------------------------

CREATE TABLE EMP_MASTER (
    "EmpNo" INT PRIMARY KEY,
    "EmpName" VARCHAR(50) NOT NULL,
    "JoiningDate" DATE,
    "Salary" DECIMAL(10, 2),
    "Commission" INT,
    "City" VARCHAR(50),
    "Dept Code" VARCHAR(10)
);

INSERT INTO EMP_MASTER ("EmpNo", "EmpName", "JoiningDate", "Salary", "Commission", "City", "Dept Code") VALUES
(101, 'Keyur', '2002-01-05', 12000.00, 4500, 'Rajkot', '3@g'),
(102, 'Hardik', '2004-02-15', 14000.00, 2500, 'Ahmedabad', '3@'),
(103, 'Kajal', '2006-03-14', 15000.00, 3000, 'Baroda', '3-GD'),
(104, 'Bhoomi', '2005-06-23', 12500.00, 1000, 'Ahmedabad', '1A3D'),
(105, 'Harmit', '2004-02-15', 14000.00, 2000, 'Rajkot', '312A');


SELECT * FROM EMP_MASTER;


--1-Display the result of Salary plus Commission. --

SELECT SALARY + Commission AS TOTAL
FROM EMP_MASTER;

--2-Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.--

SELECT CEILING(55.2),CEILING(35.7),CEILING(-55.2); 

--3-Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2. --

SELECT  FLOOR(55.2),FLOOR(35.7),FLOOR(-55.2);

--4-Find out remainder of 55 divided 2 and 55 divided by 3. --

SELECT 55 % 2 , 55 % 3;

--5-Find out value of 23 raised to 2nd power and 14 raised 3rd power.--

SELECT POWER(23, 2),POWER(14,3);




------------------------------------------------PART-C--------------------------------------------------------------



--1-Retrieve the details of employees whose total earnings (Salary + Commission) are greater than 15000.--

SELECT * , SALARY + Commission AS TOTAL
FROM EMP_MASTER
WHERE SALARY + Commission > 15000;

--2-Find the details of employees whose commission is more than 25% of their salary.--

SELECT *
FROM EMP_MASTER
WHERE Commission > Salary*0.25;

--3-List the employees who joined before 2005 and whose total earnings (Salary + Commission) are greater 
--than 15000.--

SELECT *
FROM EMP_MASTER
WHERE JoiningDate < '2005-01-01' AND SALARY + Commission > 15000;

--4-Find employees whose total earnings (Salary + Commission) are at least double their salary.--

SELECT *
FROM EMP_MASTER
WHERE SALARY + Commission > Salary*2;




-----------STRING FUNCTIONS------------


--------------------------------------------------PART-A----------------------------------------------------------------

--1-Find the length of following. (I) NULL    (II) ‘   hello     ’   (III)  Blank--

SELECT LEN(NULL) , LEN(   'hello'     ) ,LEN('');

--2-Display your name in lower & upper case.--

SELECT LOWER('DARAPAN') ;
SELECT UPPER('DARPAN');

--3-Display first three characters of your name. --

SELECT LEFT('Darpan',3); 

--4-Display 3rd to 10th character of your name.--

SELECT SUBSTRING('Darpan Parmar',3 , 10);

--5-Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.--

SELECT REPLACE('abc123efg ab5ab5ab5','abc123efg','abcXYZefg');
SELECT REPLACE('abcabcabc ab5ab5ab5','abcabcabc','ab5ab5ab5');

--6-Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.--

SELECT ASCII('A'), ASCII('a'),ASCII('z'),ASCII('Z'),ASCII('0'),ASCII('9');

--7-Write a query to display character based on number 97, 65,122,90,48,57.--

SELECT CHAR(97),CHAR(65),CHAR(122),CHAR(90),CHAR(48),CHAR(57);

--8-Write a query to remove spaces from left of a given string ‘ hello world  ‘. 

SELECT LTRIM(' hello world  ');

--9-Write a query to remove spaces from right of a given string ‘ hello world  ‘--

SELECT RTRIM(' hello world  ');

--10- Write a query to display first 4 & Last 5 characters of ‘SQL Server’. --

SELECT LEFT('SQL Server', 4) AS First4Chars;
SELECT RIGHT('SQL Server', 5) AS Last5Chars;

--11-Write a query to convert a string ‘1234.56’ to number (Use cast and convert function). --

SELECT CAST(1234.56 AS varchar);
SELECT CONVERT(varchar , 1234.56 );

--12-Write a query to convert a float 10.58 to integer (Use cast and convert function).--

SELECT CAST(10.58 AS float);
SELECT CONVERT(FLOAT , 10.58 );

--13- Put 10 space before your name using function.--

SELECT  SPACE(10)+ 'Darpan' 

--14- Combine two strings using + sign as well as CONCAT ().--

SELECT CONCAT('Darshan','University');
SELECT 'Darshan'+'University';

--15-Find reverse of “Darshan”.--

SELECT REVERSE('Darshan');

--16-Repeat your name 3 times. --

SELECT REPLICATE('Darpan',3);



-------------------------------------------------PART-B---------------------------------------------------------------

--1-Find the length of EMP Name and City columns.--

Select LEN(EmpName),LEN(City)
FROM EMP_MASTER;

--2-Display EMP Name and City columns in lower & upper case.--

SELECT UPPER(EmpName),UPPER(City),LOWER(EmpName),LOWER(City)
FROM EMP_MASTER;

--3-Display first three characters of EMP Name column--

SELECT LEFT(EmpName , 3)
FROM EMP_MASTER;

--4-Display 3rd to 10th character of city column.--

SELECT SUBSTRING(City , 3 , 10) 
FROM EMP_MASTER;

--5-Write a query to display first 4 & Last 5 characters of EMP Name column.--

SELECT LEFT(EmpName , 4),RIGHT(EmpName , 5)
FROM EMP_MASTER;



-----------------------------------------------------PART-C---------------------------------------------------------


--1-Put 10 space before EMP Name using function. --

SELECT  SPACE(10)+ EmpName
FROM EMP_MASTER;

--2-Combine EMP Name and city columns using + sign as well as CONCAT ().--



