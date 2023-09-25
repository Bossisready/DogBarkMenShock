Create trigger t1 On database For Create_table as Begin print('New Table is created') End

Create Table student(sno int primary key, sname varchar(20), address varchar(50) )
select * from student


Alter trigger t1 on database for Create_Table, Alter_Table, Drop_Table as Begin print('Trigger t1') end

Alter table student add contact_no int

drop table student

Create Table student(sno int primary key, sname varchar(20), address varchar(50) )

select * from student


Create trigger t2 on database for Alter_Table, Drop_Table as begin print('permission denied') rollback end

Alter table student add contact_no int

drop table student

disable trigger t2 on database
Alter table student add contact_no int

Enable trigger t2 on database
Alter table student add contact_no int

create trigger t3 on database for rename as begin print('Rename trigger') end
sp_Rename 'student','childern'
select * from childern

create trigger t4 on all server for DDL_Database_Events as print('permission denied') rollback 
go

use master
go

create database d

drop trigger t1 on database
drop trigger t4 on all server




Select * from customer

CREATE  TABLE customer(id int, name varchar(20), location varchar(20))

create trigger t5 on customer for insert, update, delete as begin print('OK!') end

insert into customer values(10,'george','london')

update customer set id = 20 where id =10

delete from customer where id = 20



create trigger t6 on customer for insert, update, delete as begin print('Permission Denied') rollback end

insert into customer values(10,'george','london')

update customer set id = 20 where id =10

delete from customer where id = 20

disable trigger t6 on customer


Create trigger t7 on customer for insert, update, delete as begin print 'Inserted' Select * from inserted print 'Deleted' Select * from deleted end

insert into customer values(10,'george','london')

delete from customer where cid = 10

update customer set cname = 'Ms.'+cname where cname = 'george'



Create table product(pname varchar(50))

Create trigger t8 on product instead of delete as print('delete not allowed')

insert product select 'cannot' union select 'delete' union select 'me'

select * from product

delete product 

update product set pname = 'cant' where pname = 'cannot'



