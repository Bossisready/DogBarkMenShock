Select * from Emp  where dno in (Select dno from dept)

Select ename from Emp where dno = 10 and dno = (Select dno from dept where location = 'london')


Select ename from Emp e1 where e1.doj in (Select e2.doj from Emp e2 where e1.eno <> e2.eno)


Select e1.ename,e1.dno from Emp e1 where e1.dno not in(Select e2.dno from Emp e2)









Select * from Emp e where exists (select * from dept d where e.dno = d.dno)



Select e1.ename from Emp e1 where e1.dno = (Select dno from dept where dname='Accounts')

Select ename from Emp where salary > (Select AVG(Salary) from Emp)

Select * from Emp e where not exists (select * from dept d where e.dno = d.dno)

Select ename from Emp where salary > (Select AVG(salary) from Emp where dno in (Select dno from dept))

Select ename from Emp where salary > (Select AVG(salary) from Emp e ,dept d where e.dno = d.dno)

Select ename from Emp where salary >all (Select MAX(salary) from Emp group by dno)

Select ename, comm from Emp where comm > (Select comm  from  emp where eno = 3)

Select ename, doj from Emp where doj > (Select doj  from  emp where ename='Hayes')

Select ename, salary from Emp where salary >any (Select salary from Emp where dno=20 )

Select ename, salary from Emp where salary >(Select MIN(Salary) from Emp where dno = 20)

Select ename, salary from Emp where salary >all (Select salary from Emp where dno in (Select dno from dept where dname='IT' or dname = 'Finance'))

Select ename, salary from Emp where salary >all (Select salary from Emp e, dept d where e.dno = d.dno and d.dname='IT' or d.dname = 'Finance')

Select ename , salary from Emp where dno in (Select dno from emp where ename like '%o%' and salary < (Select MAX(salary) from Emp))

Insert into employee Select * from Emp where dno = 30

Update Emp set comm = comm + (comm*0.1) where dno in (Select dno  from dept where location = 'UK')

Delete from Emp where dno in (Select  dno from dept where dname='HR')
