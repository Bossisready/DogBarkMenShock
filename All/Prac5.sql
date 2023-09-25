use mohsin_57

Select * from Emp, dept

Select * from emp e,dept d where e.dno = d.dno 

Select e.* from emp e inner join dept d on e.dno = d.dno

Select ename from emp e, dept d where e.dno = 10 and d.location = 'london'

Select e1.ename, e1.doj from emp e1 , emp e2 where e1.doj = e2.doj and e1.eno <> e2.Eno

select distinct  e1.ename, e1.dno from emp e1 , emp e2 where e1.dno <> e2.dno 

select * from Emp e left join dept d on e.dno = d.dno

select * from Emp e right join dept d on e.dno = d.dno


select ename from Emp where dno = 10 union select ename from Emp where dno = 20

select dno from Emp intersect select dno from dept

select dno from dept except select dno from Emp

select ename from emp where dno = 10 except   select ename from emp where dno = 20