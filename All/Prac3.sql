select * from Emp
select ename, salary, jobcode from Emp
select ename from Emp where salary< 50000
select ename,salary*12 from Emp
select dno from Emp
select distinct dno from Emp
select top 2 * from Emp
select ename from Emp where comm between 200 and 400
select ename from Emp where comm is null
select ename from Emp where ename like 'a%'
select ename from Emp where ename like '%b'
select ename from Emp where ename like '[a-z]%'
select ename from Emp where ename like '[^b-z]%'
select ename from Emp where dno in(10,20,30)
select ename from Emp where doj='05-sep-18' and dno not in(10,20)

select * from Emp order by ename
select ename, comm+(comm *0.10) from Emp order by jobcode
select * from Emp order by salary desc
select * from Emp order by 3
select *from Emp where salary between 10000 and 50000 order by salary

select abs (30)as absolute 
select ceiling (10.8)
select floor (10.8)
select log (10)
select log10 (10)
select pi()
select power(10,2)
select rand()
select rand(10)
select round (156.567,2)
select sign (-10)
select sign (10)
select square(10)
select sqrt(10)

select ascii('A')
select ascii('xyz')
select char(97)
select ename from Emp where charindex ('n',ename)>0
select substring('hello',3,3)
select len('mohsin')
select lower(ename)from Emp
select upper(ename)from Emp
select initcap(ename)from Emp
select ltrim('          mohsin             ')
select rtrim('          mohsin             ')
select rtrim('hello')+('world')
select reverse('mohsin')
select replicate('mohsin',2)
select replace('hello','l','o')
select ('mohsin')+space(1)+('saify')
select soundex('smith'),soundex('symth')