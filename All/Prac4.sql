Select * into employee from Emp
Insert into employee values(1, 'Jani', 60000,'30-nov-20',200,'400',20)
Insert into employee(Eno,ename,salary,doj,comm,jobcode) values(2, 'John', 50000,'15-jun-20',null,'300')
Insert into employee values(3, 'Jani', null,'10-jan-20',300,'500',10)
Select * from employee

update employee set salary = salary + (salary*0.2) where comm is null
Select * from employee

update employee set salary = salary - 5000 where dno=20
Select ename,salary from employee

update employee set comm = comm + (comm*0.05)where dno is null
select * from employee

update employee set comm = comm-(comm*0.02) where doj = '15-jun-20'
select * from employee


delete from employee where doj = '30-nov-20'
select * from employee

delete from employee 
select * from employee

drop table employee


Insert into Emp values(6, 'Jani', null,'10-jan-20',300,'500',100)


update dept set dno =100 where dno = 20


delete	from dept where dno=10