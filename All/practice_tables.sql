CREATE TABLE worker(worker_id int primary key ,first_name  varchar(20), last_name varchar(20), salaries int, joining_date datetime, department varchar(20))
SELECT * from worker

INSERT into worker VALUES(001,'Aditya','Roy',100000,'20-feb-14 09:00:00','HR')
INSERT into worker VALUES(002,'Akshay','Kumar',80000,'11-jun-14 09:00:00','Admin')
INSERT into worker VALUES(003,'Salman','Khan',300000,'20-feb-14 09:00:00','HR')
INSERT into worker VALUES(004,'Sanjay','Datt',500000,'20-feb-14 09:00:00','Admin')
INSERT into worker VALUES(005,'Sharukh','Khan',500000,'11-jun-14 09:00:00','Admin')
INSERT into worker VALUES(006,'Vijay','Maliya',200000,'11-jun-14 09:00:00','Account')
INSERT into worker VALUES(007,'Vikas','Gupta',75000,'20-jan-14 09:00:00','Create')
INSERT into worker VALUES(008,'Zubir','Khan',90000,'11-apr-14 09:00:00','Admin')

delete from worker


CREATE TABLE bonus(worker_ref_id int foreign key references worker(worker_id),bonus_date datetime,bonus_amount int)

INSERT into bonus VALUES(1,'20-feb-16',5000)
INSERT into bonus VALUES(2,'11-jun-16',3000)
INSERT into bonus VALUES(3,'20-feb-16',4000)
INSERT into bonus VALUES(1,'20-feb-16',4500)
INSERT into bonus VALUES(2,'11-jun-16',3500)

Select * FROM bonus

CREATE TABLE title(worker_ref_id int foreign key references worker(worker_id),worker_title varchar(20),affected_from datetime)

INSERT into title VALUES(1,'Acting','20-feb-16')
INSERT into title VALUES(2,'Executive','11-jun-16')
INSERT into title VALUES(8,'Executive','11-jun-16')
INSERT into title VALUES(5,'Manager','11-jun-16')
INSERT into title VALUES(4,'Asst. Boss','11-jun-16')
INSERT into title VALUES(7,'Executive','11-jun-16')
INSERT into title VALUES(6,'Lead','11-jun-16')
INSERT into title VALUES(3,'Leaded','11-jun-16')

select * from title