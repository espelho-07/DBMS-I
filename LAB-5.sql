--LAB-5--




----------------------------------------------------------------PART-A------------------------------------------------------



--1-Update deposit amount of all customers from 3000 to 5000. (Use Deposit Table)--

UPDATE DEPOSIT
SET AMOUNT=5000
WHERE AMOUNT=3000;

SELECT* FROM DEPOSIT;

--2-Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table)--

UPDATE BORROW
SET BNAME='C.G. ROAD'
WHERE CNAME='ANIL'

SELECT* FROM BORROW

--3-Update Account No of SANDIP to 111 & Amount to 5000. (Use Deposit Table)--

UPDATE DEPOSIT
SET ACTNO=111,AMOUNT=5000
WHERE CNAME='SANDIP'

SELECT* FROM DEPOSIT;

--4-Update amount of KRANTI to 7000. (Use Deposit Table)--

UPDATE DEPOSIT
SET AMOUNT=7000
WHERE CNAME='KRANTI';

SELECT* FROM DEPOSIT;

--5-Update branch name from ANDHERI to ANDHERI WEST. (Use Branch Table)--

UPDATE BRANCH
SET BNAME='ANDHERI WEST'
WHERE BNAME='ANDHERI';

SELECT* FROM BRANCH;

--6-Update branch name of MEHUL to NEHRU PALACE. (Use Deposit Table)--

UPDATE DEPOSIT
SET BNAME='NEHRU PALACE'
WHERE CNAME='MEHUL';

SELECT* FROM DEPOSIT;

--7-Update deposit amount of all depositors to 5000 whose account no between 103 & 107. (Use Deposit Table)-- 

UPDATE DEPOSIT
SET AMOUNT=5000
WHERE ACTNO BETWEEN 103 AND 107;

SELECT* FROM DEPOSIT;

--8-Update ADATE of ANIL to 1-4-95. (Use Deposit Table)--

UPDATE DEPOSIT
SET ADATE='1995-04-01'
WHERE CNAME='ANIL';

SELECT* FROM DEPOSIT;

--9-Update the amount of MINU to 10000. (Use Deposit Table)--

UPDATE DEPOSIT
SET AMOUNT=10000
WHERE CNAME='MINU';

SELECT* FROM DEPOSIT;

--10-Update deposit amount of PRAMOD to 5000 and ADATE to 1-4-96 (Use Deposit Table)--

UPDATE DEPOSIT
SET AMOUNT=5000,ADATE='1996-04-01'
WHERE CNAME='PRAMOD';

SELECT* FROM DEPOSIT;

----------------------------------------------------------------PART-B------------------------------------------------------
