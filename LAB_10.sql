---LAB_10

---PART_A


CREATE TABLE STUDNET_INFO(
RNO INT,
NAME VARCHAR(50),
BRANCH VARCHAR(50),
SPI DECIMAL(8,2),
BKLOG INT
);


INSERT INTO STUDNET_INFO VALUES(101,'Raju','CE',8.80,0)
INSERT INTO STUDNET_INFO VALUES(102,'Amit','CE',2.20,3)
INSERT INTO STUDNET_INFO VALUES(103,'Sanjay','ME',1.50,6)
INSERT INTO STUDNET_INFO VALUES(104,'Neha','EC',7.65,1)
INSERT INTO STUDNET_INFO VALUES(105,'Meera','EE',5.52,2)
INSERT INTO STUDNET_INFO VALUES(106,'Mahesh','EC',4.50,3)

SELECT * FROM STUDNET_INFO


CREATE VIEW PERSONAL AS  SELECT * FROM STUDNET_INFO

CREATE VIEW STUDENT_DETAILS AS SELECT NAME,BRANCH,SPI FROM STUDNET_INFO

CREATE VIEW ACADEMIC_DATA AS SELECT RNO,NAME,BRANCH FROM STUDNET_INFO

CREATE VIEW STUDNET_BKLOG AS SELECT * FROM STUDNET_INFO WHERE BKLOG>2

CREATE VIEW STUDNET_PATTERN AS SELECT RNO,NAME,BRANCH FROM STUDNET_INFO WHERE NAME LIKE '____'

INSERT INTO ACADEMIC_DATA VALUES(107,'Meet','ME') SELECT * FROM STUDNET_INFO

UPDATE STUDENT_DETAILS SET BRANCH ='ME' WHERE NAME='AMIT'

DELETE FROM ACADEMIC_DATA WHERE RNO=104


---PART-B

CREATE VIEW STUNDET_INFORMATION AS SELECT * FROM STUDNET_INFO WHERE SPI>8.5

CREATE VIEW STUDENT_NOBKLOG AS SELECT * FROM STUDNET_INFO WHERE BKLOG=0

CREATE VIEW COMPUTERVIEW AS SELECT * FROM STUDNET_INFO WHERE BRANCH='CE'

---PART-C

CREATE VIEW RESULT_EC AS SELECT NAME,SPI FROM STUDNET_INFO WHERE SPI<5 AND BRANCH='EC'

UPDATE RESULT_EC SET SPI=4.90 WHERE NAME='MAHESH'

CREATE VIEW STU_BKLOG AS SELECT RNO,NAME,BKLOG FROM STUDNET_INFO WHERE NAME LIKE 'M%' AND BKLOG>5

DROP VIEW COMPUTERVIEW