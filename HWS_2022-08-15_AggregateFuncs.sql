--Exerxise 1--
SELECT 'Exercise: ' AS ' ', 1 AS ' ';

SELECT 'Number of Jobs: ' AS ' ', Count(DISTINCT job_id) AS ' '
	FROM employees;

--Exerxise 2--
SELECT 'Exercise: ' AS ' ', 2 AS ' ';

SELECT 'Salaries Total: ' AS ' ', Sum(salary) AS ' '
	FROM employees;

--Exerxise 3--
SELECT 'Exercise: ' AS ' ', 3 AS ' ';

SELECT 'Minimum Salary: ' AS ' ', Min(salary) AS ' '
	FROM employees;

--Exerxise 4--
SELECT 'Exercise: ' AS ' ', 4 AS ' ';

SELECT 'Maximum Salary: ' AS ' ', Max(salary) AS 'Salary', j.job_title
	FROM employees AS emp
		JOIN jobs AS j
		ON j.job_id = emp.job_id
	GROUP BY j.job_title
		HAVING j.job_title = 'Programmer';

--Exerxise 5--
SELECT 'Exercise: ' AS ' ', 5 AS ' ';

SELECT 'Avarage Salary: ' AS ' ', 
	   Avg(salary) AS 'Salary', 
	   department_id, 
	   Count(first_name) as 'Employees'
	FROM employees
	GROUP BY department_id
		HAVING department_id = 9;

--Exerxise 6--
SELECT 'Exercise: ' AS ' ', 6 AS ' ';

SELECT Min(salary) AS 'Min Salary',
	   Max(salary) AS 'Max Salary',
	   Sum(salary) AS 'Total Salary',
	   Avg(salary) AS 'Avg Salary'
	FROM employees;

--Exerxise 7--
SELECT 'Exercise: ' AS ' ', 7 AS ' ';

SELECT job_id, COUNT(*) AS 'Employees'
	FROM employees
	GROUP BY job_id
		HAVING COUNT(*) > 1;

--Exerxise 8--
SELECT 'Exercise: ' AS ' ', 8 AS ' ';

SELECT 'Difference: ' AS ' ', Max(salary) - Min(Salary) AS ' '
	FROM employees;	

--Exerxise 9--
SELECT 'Exercise: ' AS ' ', 9 AS ' ';

SELECT manager_id, Min(salary) AS 'Min Salary'
	FROM employees
	GROUP BY manager_id
		HAVING manager_id is not NULL;

--Exerxise 10--
SELECT 'Exercise: ' AS ' ', 10 AS ' ';

SELECT department_id, Sum(salary) AS 'Total Salary'
	FROM employees
	GROUP BY department_id;

--Exerxise 11--
SELECT 'Exercise: ' AS ' ', 11 AS ' ';

SELECT emp.job_id, Avg(salary) AS 'Avarage Salary', j.job_title
	FROM employees AS emp
		JOIN jobs as j
		ON j.job_id = emp.job_id
	WHERE j.job_title != 'Programmer'
	GROUP BY emp.job_id, j.job_title;

--Exerxise 12--
SELECT 'Exercise: ' AS ' ', 12 AS ' ';

SELECT department_id,
	   Min(salary) AS 'Min Salary',
	   Max(salary) AS 'Max Salary',
	   Sum(salary) AS 'Total Salary',
	   Avg(salary) AS 'Avg Salary'
	FROM employees
	WHERE department_id = 9
	GROUP BY department_id;

--Exerxise 13--
SELECT 'Exercise: ' AS ' ', 13 AS ' ';

SELECT job_id, Max(salary) AS 'Max Salary'
	FROM employees 
	GROUP BY job_id
		HAVING Max(salary) >= 4000;

--Exerxise 14--
SELECT 'Exercise: ' AS ' ', 14 AS ' ';

SELECT department_id, 
	   Avg(salary) AS 'Avarage Salary', 
	   Count(*) AS 'Employees'
	FROM employees 
	GROUP BY department_id
		HAVING Count(*) > 5;