---LAB_ 6

---MATHS FUNCTION

--PART_A


SELECT 5*30

SELECT ABS(-25),ABS(25),ABS(-50),ABS(50)

SELECT CEILING(25.2),CEILING(25.7),CEILING(-25.2)

SELECT FLOOR(25.2),FLOOR(25.7),FLOOR(-25.2)

SELECT 5%2,5%3

SELECT POWER(3,2),POWER(4,2)

SELECT SQRT(25),SQRT(30),SQRT(50)

SELECT SQUARE(5),SQUARE(15),SQUARE(25)

SELECT PI()

SELECT ROUND(157.732,2),ROUND(157.732,-2),ROUND(157.732,0)

SELECT EXP(2),EXP(3)

SELECT LOG(10),LOG(2)

SELECT LOG10(5),LOG10(100)

SELECT SIN(3.1415),COS(3.1415),TAN(3.1415)

SELECT SIGN(-25),SIGN(0),SIGN(25)

SELECT RAND()


---PART_B

CREATE TABLE EMP_MASTER(
EmpNo INT,
EMPNAME VARCHAR(50),
JoiningDate DATETIME,
Salary DECIMAL(8,2),
Commission INT,
City VARCHAR(50),
DeptCode VARCHAR(50)
);

SELECT *FROM EMP_MASTER

INSERT INTO EMP_MASTER VALUES(101,'Keyur','2002-01-05',12000.00,4500,'Rajkot','3@g')
INSERT INTO EMP_MASTER VALUES(102,'Hardik','2004-02-15',14000.00,2500,'Ahmedabad','3@')
INSERT INTO EMP_MASTER VALUES(103,'Kajal','2006-03-14',15000.00,3000,'Baroda','3-GD')
INSERT INTO EMP_MASTER VALUES(104,'Bhoomi','2005-06-23',12500.00,1000,'Ahmedabad','1A3D')
INSERT INTO EMP_MASTER VALUES(105,'Harmit','2004-02-15',14000.00,2000,'Rajkot','312A')

SELECT SALARY+COMMISSION AS TOTAL_SALARY FROM EMP_MASTER

SELECT CEILING(55.2),CEILING(35.7),CEILING(-55.2)

SELECT FLOOR(55.2),FLOOR(35.7),FLOOR(-55.2)

SELECT 55%2,55%3

SELECT POWER(23,2),POWER(14,3)


----PART_C

SELECT SQRT(36),SQRT(49),SQRT(81)


SELECT SQUARE(3),SQUARE(9),SQUARE(12)


SELECT ROUND(280.8952,2),ROUND(280.8952,0),ROUND(280.8952,-2)


SELECT SIN(4.2014),COS(4.2014),TAN(4.2014)


SELECT SIGN(-55),SIGN(0),SIGN(95)



--STRING FUNCTION


--PART A


SELECT LEN(NULL),LEN(' HELLO '),LEN('')

SELECT LOWER('KAVYAM'), UPPER('JOSHI')

SELECT LEFT('KAVYAM',3)

SELECT SUBSTRING('KAVYAM JOSHI',3,8)

SELECT REPLACE('abc123efg','123','XYZ'), REPLACE('abcabcabc','abc','ab5')

SELECT ASCII('a'),ASCII('A'),ASCII('z'),ASCII('Z'),ASCII('0'),ASCII('9')

SELECT CHAR(97),CHAR(65),CHAR(122),CHAR(90),CHAR(48),CHAR(57)

SELECT LTRIM('HELLO WORLD           ')

SELECT RTRIM('      HELLO WORLD')

SELECT LEFT('SQL SERVER',4), RIGHT('SQL SERVER',5)

SELECT CAST(1234.56 AS INT)

SELECT CONVERT(INT,1234.56)

SELECT CAST(10.58 AS INT)

SELECT CONVERT(INT, 10.58)

SELECT SPACE(10)+'KAVYAM'

SELECT CONCAT('KAVYAM','JOSHI'),'KAVYAM'+'JOSHI'

SELECT REVERSE('DARSHAN')

SELECT REPLICATE('KAVYAM',3)

---PART-B---	

CREATE TABLE STUDENT(
StuID INT,
FirstName  VARCHAR(25),
LastName VARCHAR(25),
Website VARCHAR(50),
City  VARCHAR(25),
Address VARCHAR(100)
);
SELECT *FROM STUDENT

INSERT INTO STUDENT VALUES(1011,'Keyur','Patel','techonthenet.com','Rajkot','A-303 �Vasant Kunj�,Rajkot')
INSERT INTO STUDENT VALUES(1022,'Hardik','Shah','digminecraft.com','Ahmedabad','"Ram Krupa",Raiya Road')
INSERT INTO STUDENT VALUES(1033,'Kajal','Trivedi','bigactivities.com','Baroda','Raj bhavan plot, near garden')
INSERT INTO STUDENT VALUES(1044,'Bhoomi','Gajera','checkyourmath.com','Ahmedabad','�Jig�s Home�, Narol')
INSERT INTO STUDENT VALUES(1055,'Harmit','Mitel','@me.darshan.com','Rajkot','B-55,Raj Residency')
INSERT INTO STUDENT VALUES(1066,'Ashok','Jani',NULl,'Baroda','A502,Club House Building')


SELECT LEN('FirstName'),LEN('LastName') 

SELECT UPPER(FirstName),LOWER(LastName) from student

SELECT LEFT(FirstName,3) FROM STUDENT

SELECT SUBSTRING(Website,3,8) FROM STUDENT

SELECT LEFT(Website,4),RIGHT(Website,5) from STUDENT



----PART-C-----


select space(10)+ FirstName from STUDENT

select CONCAT(FirstName,LastNAME), FirstName+LastNAME FROM STUDENT

SELECT CONCAT(FirstName,LastNAME,Website,City,Address),FirstName+LastNAME+Website+City+Address FROM STUDENT

SELECT REVERSE(Firstname) FROM STUDENT

SELECT Replicate(Firstname,3) FROM STUDENT

select FirstNAME FROM STUDENT WHERE LEN(FirstNAME)=5

SELECT CONCAT(FirstNAME,'LIVES IN',CITY) FROM STUDENT

SELECT 'STUDENT_ID OF'+'IS'+CAST(STUID AS varchar) FROM STUDENT


--DATE FUNCTION

--PART_A

SELECT GETDATE() AS TODAY_DATE

SELECT GETDATE()+365

SELECT CONVERT(VARCHAR(50),GETDATE(),100)

SELECT CONVERT(VARCHAR(50),GETDATE(),106)

SELECT CONVERT(varchar(50),GETDATE(),7)

SELECT DATEDIFF(MONTH,'2008-12-31','2009-03-31')

SELECT DATEDIFF(YEAR,'2010-09-14','2012-01-25')

SELECT DATEDIFF(HOUR,'2012-01-25 7:00','2012-01-26 10:30')

SELECT DAY('2016-05-12'),MONTH('2016-05-12'),YEAR('2016-05-12')

SELECT DATEADD(YEAR,5,GETDATE())

SELECT DATEADD(MONTH,-2,GETDATE())

SELECT DATENAME(MONTH,GETDATE())

SELECT DATEPART(MONTH,GETDATE())

SELECT EOMONTH(GETDATE())

SELECT DATEDIFF(YEAR,'2006-03-09','2024-08-07'),(MONTH,'2006-03-09','2024-08-07')


---PART-B
CREATE TABLE EMP_DETAIL(
EMPNO INT,
EMPNAME VARCHAR(30),
JOININGDATE DATETIME,
SALARY DECIMAL(10,2),
CITY VARCHAR(30),
);

SELECT * FROM EMP_DETAIL

INSERT INTO EMP_DETAIL VALUES(101,'KEYUR','2002-1-05',12000,'RAJKOT'),
(102,'HARDIK','2004-02-15',14000,'AHEMDABAD'),
(103,'KAJAL','2006-03-14',15000,'BARODA'),
(104,'BHOOMI','2005-06-23',12500,'AHEMDABAD'),
(105,'HARMIT','2004-02-15',14000,'RAJKOT'),
(106,'JAY','2007-3-12',12000,'SURAT')

--1. Write a query to find new date after 365 day with reference to JoiningDate.
SELECT DATEADD(d,365,JOININGDATE) FROM EMP_DETAIL

--2. Display the JoiningDate in a format that appears as may 5 1994 12:00AM.
SELECT FORMAT(JOININGDATE,'MMMM dd yyyy hh:mm tt') FROM EMP_DETAIL

--3. Display the JoiningDate in a format that appears as 03 Jan 1995.
SELECT FORMAT(JOININGDATE,'dd MMM yyyy ') FROM EMP_DETAIL

--4. Display the JoiningDate in a format that appears as Jan 04, 96.
SELECT FORMAT(JOININGDATE,'MMM dd yy') FROM EMP_DETAIL

--5. Write a query to find out total number of months between JoiningDate and 31-Mar-09
SELECT DATEDIFF(MONTH,JOININGDATE,'31-Mar-09')  FROM EMP_DETAIL

--6. Write a query to find out total number of years between JoiningDate and 14-Sep-10
SELECT DATEDIFF(YEAR,JOININGDATE,'31-Mar-09')  FROM EMP_DETAIL



----PART-C



--1. Write a query to extract Day, Month, Year from JoiningDate.
SELECT DAY(JOININGDATE),MONTH(JOININGDATE),YEAR(JOININGDATE) FROM EMP_DETAIL

--2. Write a query that adds 5 years to JoiningDate.
SELECT DATEADD(YY,5,JOININGDATE) FROM EMP_DETAIL

--3. Write a query to subtract 2 months from JoiningDate.
SELECT DATEADD(MM,-2,JOININGDATE) FROM EMP_DETAIL

--4. Extract month from JoiningDate using datename () and datepart () function.
SELECT DATENAME(MONTH,JOININGDATE),DATEPART(MONTH,JOININGDATE) FROM EMP_DETAIL

--5. Calculate your age in years and months
SELECT DATEDIFF(YEAR,'2006-01-19',GETDATE()),DATEDIFF(MONTH,'2006-01-19',GETDATE())
