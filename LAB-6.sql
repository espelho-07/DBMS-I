--LAB-6--

------------------------------ Part � A ------------------------------

-- Creating the STUDENT table
CREATE TABLE STUDENT (
  STUID INT,
  FIRSTNAME VARCHAR(25),
  LASTNAME VARCHAR(25),
  WEBSITE VARCHAR(50),
  CITY VARCHAR(25),
  ADDRESS VARCHAR(100)
);

-- Inserting records into STUDENT table
INSERT INTO STUDENT (STUID, FIRSTNAME, LASTNAME, WEBSITE, CITY, ADDRESS) VALUES 
(1011, 'KEYUR', 'PATEL', 'TECHONTHENET.COM', 'RAJKOT', 'A-303 �Vasant Kunj�, Rajkot'),
(1022, 'HARDIK', 'SHAH', 'digminecraft.com', 'Ahmedabad', '�Ram Krupa�, Raiya Road'),
(1033, 'KAJAL', 'TRIVEDI', 'bigactivities.com', 'Baroda', 'Raj bhavan plot, near garden'),
(1044, 'BHOOMI', 'GAJERA', 'checkyourmath.com', 'Ahmedabad', '�Jig�s Home�, Narol'),
(1055, 'HARMIT', 'MITEL', '@ME.DARSHAN.COM', 'RAJKOT', 'B-55, Raj Residency'),
(1066, 'ASHOK', 'JANI', NULL, 'Baroda', 'A502, Club House Building');

-- Display all students
SELECT * 
FROM STUDENT;

-- 1. Display the names of students whose name starts with 'k'
SELECT FIRSTNAME 
FROM STUDENT 
WHERE FIRSTNAME LIKE 'K%';

-- 2. Display the names of students whose name consists of five characters
SELECT FIRSTNAME 
FROM STUDENT 
WHERE FIRSTNAME LIKE '_____';

-- 3. Retrieve first and last names of students whose city ends with 'a' and is six characters long
SELECT FIRSTNAME, LASTNAME 
FROM STUDENT 
WHERE CITY LIKE '_____A';

-- 4. Display students whose last name ends with 'tel'
SELECT FIRSTNAME 
FROM STUDENT 
WHERE LASTNAME LIKE '%TEL';

-- 5. Display students whose first name starts with 'ha' and ends with 't'
SELECT FIRSTNAME 
FROM STUDENT 
WHERE FIRSTNAME LIKE 'HA%T';

-- 6. Display students whose first name starts with 'k' and has 'y' as the third character
SELECT FIRSTNAME 
FROM STUDENT 
WHERE FIRSTNAME LIKE 'K_Y%';

-- 7. Display names of students with no website and five-character name
SELECT FIRSTNAME 
FROM STUDENT 
WHERE FIRSTNAME LIKE '_____' AND WEBSITE IS NULL;

-- 8. Display students whose last name contains 'jer'
SELECT FIRSTNAME 
FROM STUDENT 
WHERE LASTNAME LIKE '%JER%';

-- 9. Display students whose city starts with 'r' or 'b'
SELECT FIRSTNAME 
FROM STUDENT 
WHERE CITY LIKE 'R%' OR CITY LIKE 'B%';

-- 10. Display names of students who have a website
SELECT FIRSTNAME 
FROM STUDENT 
WHERE WEBSITE IS NOT NULL;

-- 11. Display students whose name starts from the alphabet A to H
SELECT FIRSTNAME 
FROM STUDENT 
WHERE FIRSTNAME BETWEEN 'A' AND 'Hzzzz';

-- 12. Display students whose second character in the name is a vowel
SELECT FIRSTNAME 
FROM STUDENT 
WHERE FIRSTNAME LIKE '_A%' OR FIRSTNAME LIKE '_E%' OR FIRSTNAME LIKE '_I%' OR FIRSTNAME LIKE '_O%' OR FIRSTNAME LIKE '_U%';


SELECT FIRSTNAME  
FROM STUDENT
WHERE FIRSTNAME LIKE '%[A,E,I,O,U]%';

-- 13. Display students with no website and a name of at least five characters
SELECT FIRSTNAME 
FROM STUDENT 
WHERE FIRSTNAME LIKE '_____%'AND WEBSITE IS NULL;

-- 14. Display students whose last name starts with 'Pat'
SELECT FIRSTNAME, LASTNAME 
FROM STUDENT 
WHERE LASTNAME LIKE 'PAT%';

-- 15. Display students whose city does not start with 'b'
SELECT FIRSTNAME, CITY 
FROM STUDENT 
WHERE CITY NOT LIKE 'B%';

-- 16. Display students whose student ID ends with a digit
-- (Technically all integers end with a digit, shown for format consistency)
SELECT * 
FROM STUDENT 
WHERE STUID LIKE '%[0-9]';

-- 17. Display students whose address contains no digits
SELECT FIRSTNAME, ADDRESS 
FROM STUDENT 
WHERE ADDRESS NOT LIKE '%0%' AND ADDRESS NOT LIKE '%1%' AND ADDRESS NOT LIKE '%2%' AND ADDRESS NOT LIKE '%3%' AND ADDRESS NOT LIKE '%4%' AND ADDRESS NOT LIKE '%5%' AND ADDRESS NOT LIKE '%6%' AND ADDRESS NOT LIKE '%7%' AND ADDRESS NOT LIKE '%8%' AND ADDRESS NOT LIKE '%9%';

SELECT FIRSTNAME,ADDRESS
FROM STUDENT
WHERE ADDRESS NOT LIKE '%[0-9]%';

-- 18. Display students: first name starts with 'B', last name ends with 'A', website contains 'math' or 'science', and city doesn't start with 'B'
SELECT FIRSTNAME, LASTNAME, WEBSITE, CITY 
FROM STUDENT 
WHERE FIRSTNAME LIKE 'B%' AND LASTNAME LIKE '%A' AND (WEBSITE LIKE '%MATH%' OR WEBSITE LIKE '%SCIENCE%') AND CITY NOT LIKE 'B%';

-- 19. Display students: last name contains 'SHAH', city ends with 'd', and website is NULL or contains 'com'
SELECT * 
FROM STUDENT 
WHERE LASTNAME LIKE '%SHAH%' AND CITY LIKE '%D' AND (WEBSITE IS NULL OR WEBSITE LIKE '%COM%');

-- 20. Display students: first and second letters are vowels, city starts with 'R', and website contains '.com'
SELECT FIRSTNAME, CITY, WEBSITE 
FROM STUDENT 
WHERE FIRSTNAME LIKE '[AEIOU][AEIOU]%' AND CITY LIKE 'R%' AND WEBSITE LIKE '%.COM%';

------------------------------ Part � B ------------------------------


--1. Display all the students whose name�s second character is vowel and of and start with H.--

SELECT FIRSTNAME
FROM STUDENT
WHERE FIRSTNAME LIKE 'H[AEIOU]%';

--2. Display all the students whose last name does not ends with �a�. --

SELECT FIRSTNAME
FROM STUDENT
WHERE LASTNAME NOT LIKE '%A';

--3. Display all the students whose first name starts with consonant.--

SELECT FIRSTNAME
FROM STUDENT
WHERE FIRSTNAME NOT LIKE '[AEIOU]%';

--4. Retrieve student details whose first name starts with 'K', last name ends with 'tel', and either their 
--website contains 'tech' or they live in a city starting with 'R'.--

SELECT FIRSTNAME 
FROM STUDENT 
WHERE FIRSTNAME LIKE 'K%' AND LASTNAME LIKE '%TEL' AND (WEBSITE LIKE '%TECH%' OR CITY LIKE 'R%');

--5. Retrieve students whose address contains a hyphen '-' and whose city starts with either 'R' or 'B'. They 
--must have a website that ends with '.com' and their first name should not start with 'A'. --

SELECT FIRSTNAME 
FROM STUDENT
WHERE ADDRESS LIKE '%-%' AND CITY LIKE 'R%' OR CITY LIKE 'B%' AND WEBSITE LIKE '%.COM' AND FIRSTNAME NOT LIKE 'A%';

--Part � C: 
--1. Display all the students whose address contains single quote or double quote. --

SELECT FIRSTNAME
FROM STUDENT
WHERE ADDRESS LIKE '%''%' OR ADDRESS LIKE '%"%';
--[''"]

--2. Find students whose city does not contain the letter 'S' and their address contains either single or double 
--quotes. Their last name should start with 'P' and they must have a website that contains 'on'. --

SELECT FIRSTNAME 
FROM STUDENT 
WHERE CITY NOT LIKE '%S%' AND LASTNAME LIKE 'P%' AND WEBSITE LIKE '%ON%' AND (ADDRESS LIKE '%''%' OR ADDRESS LIKE '%"%');