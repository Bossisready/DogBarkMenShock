CREATE view v1 as SELECT * FROM Emp

CREATE view v2 as SELECT ename,salary,jobcode from Emp

CREATE view v3 as SELECT ename,salary,Eno from Emp WHERE dno = 10

CREATE view v4 as SELECT ename,salary from Emp

CREATE view v5 (s) as SELECT sum(salary) from Emp

CREATE view v6  as SELECT ename from Emp WHERE comm in (200,400)

CREATE view v8  as SELECT e.ename,e.dno from Emp e, dept d WHERE e.dno = d.dno and d.location = 'London'

CREATE view v9 as SELECT ename FROM Emp WHERE comm is null WITH CHECK OPTION

INSERT into v1 VALUES (20,'Mohsin',12000,'21 July 2023',230,130,50)
	
UPDATE v1 SET salary = salary+(salary * 0.1) WHERE comm is NULL

DELETE FROM v1 WHERE dno = 10

DROP view v8





CREATE TABLE Person(id INT identity primary key,
                     fname VARCHAR(20),
					 lname VARCHAR(20),
					 address VARCHAR(50))

INSERT INTO Person(fname,lname,address) VALUES('Jaan','Yaar','Fountain Lake')
INSERT INTO Person(fname,lname,address) VALUES('Josh','Lan','Love Lake')
INSERT INTO Person(fname,lname,address) VALUES('Rohit','Balani','Peaceful')
SELECT * FROM Person


CREATE TABLE People(id INT identity(5,10) primary key,
                     fname VARCHAR(20),
					 lname VARCHAR(20),
					 address VARCHAR(50))

CREATE synonym p FOR People
SELECT * FROM p



CREATE USER D1
WITHOUT LOGIN
GRANT SELECT, INSERT ON Person TO D1

REVOKE INSERT ON Person FROM D1