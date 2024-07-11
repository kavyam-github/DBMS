--LAB 5

CREATE TABLE STUDENT(
StuID INT,
FirstName  VARCHAR(25),
LastName VARCHAR(25),
Website VARCHAR(50),
City  VARCHAR(25),
Address VARCHAR(100)
);
SELECT *FROM STUDENT

INSERT INTO STUDENT VALUES(1011,'Keyur','Patel','techonthenet.com','Rajkot','A-303 ‘Vasant Kunj’,Rajkot')
INSERT INTO STUDENT VALUES(1022,'Hardik','Shah','digminecraft.com','Ahmedabad','"Ram Krupa",Raiya Road')
INSERT INTO STUDENT VALUES(1033,'Kajal','Trivedi','bigactivities.com','Baroda','Raj bhavan plot, near garden')
INSERT INTO STUDENT VALUES(1044,'Bhoomi','Gajera','checkyourmath.com','Ahmedabad','“Jig’s Home”, Narol')
INSERT INTO STUDENT VALUES(1055,'Harmit','Mitel','@me.darshan.com','Rajkot','B-55,Raj Residency')
INSERT INTO STUDENT VALUES(1066,'Ashok','Jani',NULl,'Baroda','A502,Club House Building')

select FirstName from  STUDENT where FirstName like 'k%'

select FirstName from STUDENT where FirstName like '_____'

select FirstName,LastName from STUDENT where city like '_____a'

select LastName from STUDENT where LastName like '%tel'

select FirstName from STUDENT where FirstName like 'ha%t'

select FirstName from STUDENT where FirstName like 'k_y%'

select FirstName from STUDENT where Website is null and FirstName like '_____' 

select LastName from STUDENT where LastName like '%jer%'

select City from STUDENT where City like '[r,b]%' 

select * from STUDENT where Website is not null

select *from STUDENT where FirstName like '[a-h]%'

select *from STUDENT where FirstName like '_[a,e,i,o,u]%'

select * from STUDENT where Website is null and FirstName like '_____' 

select LastName from STUDENT where LastName like 'pat%'

select *from STUDENT where City not like 'b%'

--patr-B

select *from STUDENT where FirstName like '[a-h]%'

select *from STUDENT where FirstName like 'h[a,e,i,o,u]%'

select *from STUDENT where LastName not like '%a'

select * from STUDENT where FirstName not like '[a,e,i,o,u]%'

select *from STUDENT where Website like '%.net'

--part-c

select * from STUDENT where Address like '%-%'

select *from STUDENT where Address like '%['',""]%'

select *from STUDENT where Website like '%@%'

select *from STUDENT where FirstName like '____%' or FirstName like '_____%'