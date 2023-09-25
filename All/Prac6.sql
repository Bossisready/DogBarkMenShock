Select COUNT(eno) from Emp

Select COUNT(eno) from Emp where dno = 10

Select SUM(salary) from Emp

Select MIN(comm) from Emp

Select MAX(comm) from Emp

Select AVG(salary) from EMP

Select COUNT(eno), SUM(salary),MIN(comm) ,MAX(comm), AVG(salary) from EMP



Select salary , dno from emp 

Select Sum(salary) from emp group by dno

select MIN(salary),ename from Emp group by ename

Select dno,count(eno) from Emp where salary>30000 group by dno

Select dno, AVG(salary) from Emp group by dno Having avg(salary)>20000

Select dno,count(eno) from Emp where comm between 250 and 500 group by dno Having COUNT(eno)>=2 

Select sum(salary), jobcode from Emp where ename like 'a%' group by jobcode Having SUM(salary)<50000 order by jobcode


Select GETDATE()

Select DATEADD(DAY,30,getdate())

Select DateDiff(day,'31-jul-2023',getdate())

select DATEPART(month,getdate())

select DATEName(month,getdate())

select isdate('10-jun-2002')

select CURRENT_TIMESTAMP

select CONVERT(varchar, GETDATE(),1)
select CONVERT(varchar, GETDATE(),2)
select CONVERT(varchar, GETDATE(),3)
select CONVERT(varchar, GETDATE(),4)
select CONVERT(varchar, GETDATE(),5)
select CONVERT(varchar, GETDATE(),6)
select CONVERT(varchar, GETDATE(),7)
select CONVERT(varchar, GETDATE(),8)
select CONVERT(varchar, GETDATE(),9)
select CONVERT(varchar, GETDATE(),10)
