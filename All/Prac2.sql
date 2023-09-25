create database college
create table customer(cid int, cname varchar(20),caddress varchar(50))
select * from customer
insert into customer values(1, 'Jaan','Mumbai')
select *from customer
insert into customer values(2, null, null)
select * from customer
insert into customer (cid) values(3)
select * from customer
alter table customer
add contact_no numeric
select * from customer
alter table customer
drop column contact_no 
select * from customer



create table dept(dno int Primary Key, dname varchar(20) unique, location varchar(50))
insert into dept values (10, 'Accounts','london')
select * from dept
insert into dept values (20, 'Finance','canada')
select * from dept
insert into dept values (30, 'IT','UK')
select * from dept
insert into dept values (40, 'HR','USA')
select * from dept
insert into dept values (50, 'Marketing',null)
select * from dept





create table Emp 
(Eno int Primary Key,
ename varchar(20) not null,
salary money,
doj date,
comm numeric(5) check(comm>200 and comm<500),
jobcode char(3) default'100',
dno int foreign key references dept(dno))
select * from Emp
insert into Emp values(1, 'Smith', 50000,'30-dec-20',250,'300',10)
select * from Emp
insert into Emp(eno,ename) values (20,'John')
select * from Emp
insert into Emp values(3, 'Allen', 45000,'30-dec-20',450,null,10)
insert into Emp values(4, 'Hayes', 35000,'05-aug-22',null,'110',null)
insert into Emp values(5, 'Bob', 70000,'05-april-18',350,'100',0)
delete from Emp where Eno=5
select * from Emp
delete from Emp where Eno=4
select * from Emp
insert into Emp values(2, 'John', 35000,'03-march-18',300,'101',20)
select * from Emp
delete from Emp where Eno=20
select * from Emp
insert into Emp values(5, 'Bob', 70000,'05-april-18',350,'100',30)
select * from Emp




 create table works_on(eno int,
   dno int,
   duration int,
   primary key(eno,dno),
   foreign key(eno) references Emp(eno) on delete cascade on update cascade,
   foreign key(dno) references dept(dno) on delete cascade on update cascade)
   select * from works_on



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



select abs (-30)absolute
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
select len('jaan')
select lower(ename)from Emp
select upper(ename)from Emp

select ltrim('          jaan             ')
select rtrim('          jaan             ')
select rtrim('hello')+('world')
select reverse('jaan')
select replicate('jaan',2)
select replace('hello','l','o')
select ('jaan')+space(1)+('saify')
select soundex('smith'),soundex('symth')