--Q1
select first_name as worker_name from worker

--Q2
SELECT UPPER(first_name) as first_name from worker

--Q3
SELECT distinct department from worker

--Q4
SELECT SUBSTRING(first_name,1,3) as first_name from worker

--Q5
SELECT CHARINDEX('a',first_name) from worker where first_name='Amitabh'

--Q6
SELECT RTRIM(first_name) from worker

--Q7
SELECT LTRIM(first_name) from worker

--Q8
SELECT distinct department, LEN(department) from worker

--Q9
SELECT REPLACE(first_name,'a','A') from worker

--Q10
SELECT first_name + SPACE(1) +last_name as complete_name from worker

--Q11
SELECT * FROM worker ORDER BY first_name

--Q12
SELECT * FROM worker ORDER BY first_name asc, department desc

--Q13
select * from worker where first_name in ('Vipul', 'Satish')

--Q14
select * from worker where first_name not in ('Vipul', 'Satish')

--Q15
SELECT * from worker where department='Admin'

--Q16
SELECT * from worker where first_name LIKE '%a%'

--Q17
SELECT * from worker where first_name LIKE '%a'

--Q18
SELECT * from worker where first_name LIKE '%h' and LEN(first_name)=6

--Q19
SELECT * FROM worker where salaries BETWEEN 100000 and 500000

--Q20
SELECT * from worker where joining_date = '20-feb-14 9:00:00'

--Q21
SELECT COUNT(worker_id) FROM worker where department = 'Admin'

--Q22
SELECT * from worker where salaries >= 50000 and salaries <=100000

--Q23
SELECT COUNT(worker_id) from worker GROUP by department ORDER BY department desc

--Q24
Select * FROM worker, title where worker_title='Manager' and worker_id=worker_ref_id

--Q25
SELECT first_name, last_name, salaries, joining_date, department, COUNT(*)
FROM worker
GROUP BY first_name, last_name, salaries, joining_date, department
HAVING COUNT(*) > 1;


--Q26
WITH RankedRows AS (
  SELECT *, ROW_NUMBER() OVER (ORDER BY worker_id) AS RowNum
  FROM worker
)

SELECT *
FROM RankedRows
WHERE RowNum % 2 = 1;


--Q27
WITH RankedRows AS (
  SELECT *, ROW_NUMBER() OVER (ORDER BY worker_id) AS RowNum
  FROM worker
)

SELECT *
FROM RankedRows
WHERE RowNum % 2 = 0;

--Q28
select * into title_copy from title
select * from title_copy

--Q29
select * FROM worker INNER JOIN title on worker_id=worker_ref_id

--Q30
select * FROM worker LEFT JOIN title on worker_id=worker_ref_id 

--Q31
SELECT GETDATE()

--Q32
SELECT top(10)* from worker

--Q33
SELECT DISTINCT salaries
FROM (
  SELECT salaries, DENSE_RANK() OVER (ORDER BY salaries DESC) AS SalaryRank
  FROM worker
) AS RankedSalaries
WHERE SalaryRank = 5;

--Q34
SELECT DISTINCT salaries
FROM (
  SELECT salaries, DENSE_RANK() OVER (ORDER BY salaries DESC) AS SalaryRank
  FROM worker
) AS RankedSalaries
WHERE SalaryRank = 5;

--Q35
SELECT * from worker w1, worker w2 where  w1.salaries=w2.salaries

--36
SELECT MAX(salaries) AS salary 
FROM worker
WHERE salaries <> (SELECT MAX(salaries) 
FROM worker);

--37
SELECT first_name from worker where first_name = 'Monika' 
UNION All 
SELECT first_name from worker where first_name = 'Monika'

--38
SELECT first_name , bonus_amount from worker INNER JOIN bonus on worker_id = worker_ref_id

--39
select top 50 percent * from worker;

--40
SELECT department, COUNT(department) from worker GROUP BY department HAVING COUNT(department) < 5

--41
SELECT department, COUNT(department) from worker GROUP BY department 

--42
SELECT TOP 1 *
FROM worker
ORDER BY worker_id DESC;

--43
SELECT TOP 1 * FROM worker

--45
SELECT TOP 5 *
FROM worker
ORDER BY worker_id DESC;

--46
SELECT TOP 3 salaries
FROM worker
ORDER BY salaries DESC;

--47
SELECT TOP 3 salaries
FROM worker
ORDER BY salaries

--48
SELECT DISTINCT salaries
FROM (
  SELECT salaries, ROW_NUMBER() OVER (ORDER BY salaries DESC) AS RowNum
  FROM worker
) AS RankedSalaries
WHERE RowNum = 6;

--49
SELECT department, SUM(salaries) from worker GROUP BY department

--50
SELECT TOP 2 first_name FROM worker ORDER BY salaries desc


