----PART A-----


select PERSON.PersonName,DEPT.DepartmentID,DEPT.DepartmentCode 
from PERSON join DEPT on
PERSON.DepartmentID=DEPT.DepartmentID


select P.PersonName,D.location,D.DepartmentName
from PERSON P join DEPT D on 
P.DepartmentID=D.DepartmentID where d.location='C-Block'


select  P.PersonName,P.Salary,D.DepartmentName,P.CITY 
from PERSON P join DEPT D on 
P.DepartmentID=D.DepartmentID where P.City='Jamnagar'


select  P.PersonName,P.Salary,D.DepartmentName,P.CITY 
from PERSON P join DEPT D on 
P.DepartmentID=D.DepartmentID where P.City<>'Rajkot'



select P.PersonName,D.DepartmentName,P.JoiningDate
from PERSON P join DEPT D on 
P.DepartmentID=D.DepartmentID where P.JoiningDate>'2001-08-01' and D.DepartmentName='Civil'


select * from PERSON P join DEPT D on 
P.DepartmentID=D.DepartmentID where D.DepartmentName='Computer'


select P.PersonName,D.DepartmentName 
from PERSON P join DEPT D on 
P.DepartmentID=D.DepartmentID where P.JoiningDate<(GETDATE()-365)


select D.DepartmentName,count(P.PersonName) as Count_Person
from PERSON P join DEPT D on
P.DepartmentID=D.DepartmentID group by D.DepartmentName


select max(P.Salary)as MAX_Sal,min(P.Salary)as Min_Sal,D.DepartmentName
from PERSON P join DEPT D on
P.DepartmentID=D.DepartmentID group by D.DepartmentName


select max(P.Salary)as Max_Sal,min(P.Salary)as Min_Sal,avg(P.Salary)as Avg_Sal,P.City
from PERSON  P group by P.City

select avg(P.Salary)as Avg_Sal from Person P where P.City='Ahmedabad'

select P.PersonName +'Lives in' +P.City +'and works in'+D.DepartmentName+'Department'
from PERSON P join DEPT D on
P.DepartmentID=D.DepartmentID 



----PART B---

select P.PersonName+'earns'+CAST(P.Salary as varchar)+'from'+D.DepartmentName+'Department Monthly'
from PERSON P join DEPT D on
P.DepartmentID=D.DepartmentID 


select max(P.Salary)as Max_Sal,avg(P.Salary)as Avg_Sal,P.City,D.DepartmentName
from PERSON P join DEPT D on
P.DepartmentID=D.DepartmentID group by City,D.DepartmentName


select P.PersonName,D.DepartmentName 
from PERSON P join DEPT D on
P.DepartmentID=D.DepartmentID where D.DepartmentID is Null


select sum(P.Salary),D.DepartmentName 
from PERSON P join DEPT D on
P.DepartmentID=D.DepartmentID group by D.DepartmentName 
having sum(P.Salary)>100000



----Part C--
--List all departments who have no person.
select departmentname from person p full outer join dept d on d.departmentid = p.departmentid where p.departmentid is null

--List out department names in which more than two persons are working.
select departmentname, count(personname) from dept d join person p gourp by departmentname having count(personname) > 2

--Give a 10% increment in the computer department employee’s salary. (Use Update)
update person set salary = salary*1.1 from person join dept on dept.departmentid = person.departmentid  where departmentname = 'computer'