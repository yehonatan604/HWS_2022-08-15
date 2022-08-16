--Exerxise 1--
SELECT 'Exercise: ' AS ' ', 1 AS ' ';

SELECT first_name, last_name, salary 
	FROM employees
	WHERE salary NOT BETWEEN 10000 AND 15000;

--Exerxise 2--
SELECT 'Exercise: ' AS ' ', 2 AS ' ';

SELECT first_name, last_name, department_id 
	FROM employees
	WHERE department_id = 3 OR department_id = 10
	ORDER BY department_id ASC;

--Exerxise 3--
SELECT 'Exercise: ' AS ' ', 3 AS ' ';

SELECT first_name, last_name, salary 
	FROM employees
	WHERE department_id = 3 OR department_id = 10
	AND
	salary NOT BETWEEN 10000 AND 15000;

--Exerxise 4--
SELECT 'Exercise: ' AS ' ', 4 AS ' ';

SELECT first_name, last_name, hire_date 
	FROM employees
	WHERE YEAR (hire_date) = 1987;

--Exerxise 5--
SELECT 'Exercise: ' AS ' ', 5 AS ' ';

SELECT first_name 
	FROM employees
	WHERE first_name LIKE '%b%' AND first_name LIKE '%c%';

--Exerxise 6--
SELECT 'Exercise: ' AS ' ', 6 AS ' ';

SELECT emp.last_name, j.job_title, emp.salary
	FROM employees AS emp
		JOIN jobs AS j 
		ON j.job_id = emp.job_id
	WHERE 
		(j.job_title = 'Shipping Clerk' OR j.job_title = 'Programmer')
		AND
		(emp.salary != 4500 AND emp.salary != 10000 AND emp.salary != 15000);

--Exerxise 7--
SELECT 'Exercise: ' AS ' ', 7 AS ' ';

SELECT last_name
	FROM employees
	WHERE last_name LIKE '______';

--Exerxise 8--
SELECT 'Exercise: ' AS ' ', 8 AS ' ';

SELECT last_name
	FROM employees
	WHERE last_name LIKE '__e%';

--Exerxise 9--
SELECT 'Exercise: ' AS ' ', 9 AS ' ';

SELECT DISTINCT emp.job_id, j.job_title 
	FROM employees AS EMP
		JOIN jobs AS j 
		ON j.job_id = emp.job_id;

--Exerxise 10--
SELECT 'Exercise: ' AS ' ', 10 AS ' ';

SELECT first_name, last_name, salary, (salary * 0.15) AS 'PF' 
	FROM employees;

--Exerxise 11--
SELECT 'Exercise: ' AS ' ', 11 AS ' ';

SELECT * 
	FROM employees 
	WHERE last_name IN('JONES', 'BLAKE', 'SCOTT', 'KING', 'FORD');