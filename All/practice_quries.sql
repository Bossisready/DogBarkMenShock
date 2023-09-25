--Q1 Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
select first_name as worker_name from worker

--Q2 Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.
SELECT UPPER(first_name) as first_name from worker

--Q3 Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
SELECT distinct department from worker

--Q4 Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
SELECT SUBSTRING(first_name,1,3) as first_name from worker

--Q5 Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.
SELECT CHARINDEX('a',first_name) from worker where first_name='Amitabh'

--Q6 Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
SELECT RTRIM(first_name) from worker

--Q7 Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.
SELECT LTRIM(first_name) from worker

--Q8 Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
SELECT distinct department, LEN(department) from worker

--Q9 Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
SELECT REPLACE(first_name,'a','A') from worker

--Q10 Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME. A space char should separate them.
SELECT first_name + SPACE(1) +last_name as complete_name from worker

--Q11 Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
SELECT * FROM worker ORDER BY first_name

--Q12 Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
SELECT * FROM worker ORDER BY first_name asc, department desc

--Q13 Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.
select * from worker where first_name in ('Vipul', 'Satish')

--Q14 Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
select * from worker where first_name not in ('Vipul', 'Satish')

--Q15 Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.
SELECT * from worker where department='Admin'

--Q16 Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
SELECT * from worker where first_name LIKE '%a%'

--Q17 Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
SELECT * from worker where first_name LIKE '%a'

--Q18 Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
SELECT * from worker where first_name LIKE '%h' and LEN(first_name)=6

--Q19 Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
SELECT * FROM worker where salaries BETWEEN 100000 and 500000

--Q20 Write an SQL query to print details of the Workers who have joined in Feb’2014.
SELECT * from worker where joining_date = '20-feb-14 9:00:00'

--Q21 Write an SQL query to fetch the count of employees working in the department ‘Admin’.
SELECT COUNT(worker_id) FROM worker where department = 'Admin'

--Q22 Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.
SELECT * from worker where salaries >= 50000 and salaries <=100000

--Q23 Write an SQL query to fetch the no. of workers for each department in the descending order.
SELECT COUNT(worker_id) from worker GROUP by department ORDER BY department desc

--Q24 Write an SQL query to print details of the Workers who are also Managers.
Select * FROM worker, title where worker_title='Manager' and worker_id=worker_ref_id

--Q25 Write an SQL query to fetch duplicate records having matching data in some fields of a table.
SELECT first_name, last_name, salaries, joining_date, department, COUNT(*)
FROM worker
GROUP BY first_name, last_name, salaries, joining_date, department
HAVING COUNT(*) > 1;


--Q26 Write an SQL query to show only odd rows from a table.
WITH RankedRows AS (
  SELECT *, ROW_NUMBER() OVER (ORDER BY worker_id) AS RowNum
  FROM worker
)

SELECT *
FROM RankedRows
WHERE RowNum % 2 = 1;


--Q27 Write an SQL query to show only even rows from a table.
WITH RankedRows AS (
  SELECT *, ROW_NUMBER() OVER (ORDER BY worker_id) AS RowNum
  FROM worker
)

SELECT *
FROM RankedRows
WHERE RowNum % 2 = 0;

--Q28 Write an SQL query to clone a new table from another table.
select * into title_copy from title
select * from title_copy

--Q29 Write an SQL query to fetch intersecting records of two tables.
select * FROM worker INNER JOIN title on worker_id=worker_ref_id

--Q30 Write an SQL query to show records from one table that another table does not have.
select * FROM worker LEFT JOIN title on worker_id=worker_ref_id 

--Q31 Write an SQL query to show the current date and time.
SELECT GETDATE()

--Q32 Write an SQL query to show the top n (say 10) records of a table.
SELECT top(10)* from worker

--Q33 Write an SQL query to determine the nth (say n=5) highest salary from a table.
SELECT DISTINCT salaries
FROM (
  SELECT salaries, DENSE_RANK() OVER (ORDER BY salaries DESC) AS SalaryRank
  FROM worker
) AS RankedSalaries
WHERE SalaryRank = 5;

--Q34 Write an SQL query to determine the 5th highest salary without using TOP or limit method.
SELECT DISTINCT salaries
FROM (
  SELECT salaries, DENSE_RANK() OVER (ORDER BY salaries DESC) AS SalaryRank
  FROM worker
) AS RankedSalaries
WHERE SalaryRank = 5;

--Q35 Write an SQL query to fetch the list of employees with the same salary.
SELECT * from worker w1, worker w2 where  w1.salaries=w2.salaries

--36 Write an SQL query to show the second highest salary from a table.
SELECT MAX(salaries) AS salary 
FROM worker
WHERE salaries <> (SELECT MAX(salaries) 
FROM worker);

--37 Write an SQL query to show one row twice in results from a table.
SELECT first_name from worker where first_name = 'Monika' 
UNION All 
SELECT first_name from worker where first_name = 'Monika'

--38 Write an SQL query to fetch intersecting records of two tables.
SELECT first_name , bonus_amount from worker INNER JOIN bonus on worker_id = worker_ref_id

--39 Write an SQL query to fetch the first 50% records from a table.
select top 50 percent * from worker;

--40 Write an SQL query to fetch the departments that have less than five people in it.
SELECT department, COUNT(department) from worker GROUP BY department HAVING COUNT(department) < 5

--41 Write an SQL query to show all departments along with the number of people in there.
SELECT department, COUNT(department) from worker GROUP BY department 

--42 Write an SQL query to show the last record from a table.
SELECT TOP 1 *
FROM worker
ORDER BY worker_id DESC;

--43 Write an SQL query to fetch the first row of a table.
SELECT TOP 1 * FROM worker

--44 Write an SQL query to fetch the last five records from a table.
SELECT * FROM Worker WHERE WORKER_ID <=5
UNION
SELECT * FROM (SELECT * FROM Worker W order by W.WORKER_ID DESC) AS W1 WHERE W1.WORKER_ID <=5;

--45 Write an SQL query to print the name of employees having the highest salary in each department.
SELECT TOP 5 *
FROM worker
ORDER BY worker_id DESC;

--46 Write an SQL query to fetch three max salaries from a table.
SELECT TOP 3 salaries
FROM worker
ORDER BY salaries DESC;

--47 Write an SQL query to fetch three min salaries from a table.
SELECT TOP 3 salaries
FROM worker
ORDER BY salaries

--48 Write an SQL query to fetch nth max salaries from a table.
SELECT DISTINCT salaries
FROM (
  SELECT salaries, ROW_NUMBER() OVER (ORDER BY salaries DESC) AS RowNum
  FROM worker
) AS RankedSalaries
WHERE RowNum = 6;

--49 Write an SQL query to fetch departments along with the total salaries paid for each of them.
SELECT department, SUM(salaries) from worker GROUP BY department

--50 Write an SQL query to fetch the names of workers who earn the highest salary.
SELECT TOP 2 first_name FROM worker ORDER BY salaries desc
