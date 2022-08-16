--Exerxise 1--
SELECT 'Exercise: ' AS ' ', 1 AS ' ';

SELECT l.location_id, 
	   l.street_address, 
	   l.city, 
	   l.state_province,
	   c.country_name
	FROM locations AS l
		JOIN countries AS C ON c.country_id = l.country_id;

--Exerxise 2--
SELECT 'Exercise: ' AS ' ', 2 AS ' ';

SELECT emp.first_name, 
	   emp.last_name,
	   emp.department_id,
	   d.department_name
	FROM employees AS emp
		JOIN departments AS d ON d.department_id = emp.department_id;

--Exerxise 3--
SELECT 'Exercise: ' AS ' ', 3 AS ' ';

SELECT emp.first_name, 
	   emp.last_name,
	   jobs.job_title,
	   emp.department_id,
	   d.department_name,
	   l.city
	FROM employees AS emp
		JOIN departments AS d ON d.department_id = emp.department_id
		JOIN locations AS l on l.location_id = d.location_id
		JOIN jobs on jobs.job_id = emp.job_id
	WHERE l.city = 'London';

--Exerxise 4--
SELECT 'Exercise: ' AS ' ', 4 AS ' ';

SELECT emp.employee_id,
	   emp.first_name, 
	   emp.last_name,
	   emp.manager_id,
	   mng.first_name,
	   mng.last_name
	FROM employees AS emp
		JOIN employees AS mng ON emp.manager_id = mng.employee_id
	WHERE emp.manager_id is not NULL;

--Exerxise 5--
SELECT 'Exercise: ' AS ' ', 5 AS ' ';

SELECT emp.first_name, 
	   emp.last_name,
	   emp.hire_date
	FROM employees AS emp
		JOIN employees AS lex ON lex.first_name = 'Lex'
	WHERE emp.hire_date > lex.hire_date;

--Exerxise 6--
SELECT 'Exercise: ' AS ' ', 6 AS ' ';

SELECT d.department_name, Count(*) AS 'Employees'
	FROM employees AS emp
		JOIN departments AS d ON d.department_id = emp.department_id
	GROUP BY d.department_name;

--Exerxise 7--
SELECT 'Exercise: ' AS ' ', 7 AS ' ';

SELECT emp.employee_id,
	   jobs.job_title,
	   emp.hire_date
	FROM employees AS emp
		JOIN jobs ON jobs.job_id = emp.job_id
	WHERE emp.department_id = 5 AND Year(emp.hire_date) > 1993;

--Exerxise 8--
SELECT 'Exercise: ' AS ' ', 8 AS ' ';

SELECT DISTINCT 
	   emp.department_id,
	   d.department_name,
	   mng.first_name,
	   mng.last_name
	FROM employees AS emp
		JOIN employees AS mng ON emp.manager_id = mng.employee_id
		JOIN departments AS d ON d.department_id = emp.department_id;

--Exerxise 9--
SELECT 'Exercise: ' AS ' ', 9 AS ' ';

SELECT DISTINCT 
	   emp.department_id,
	   d.department_name,
	   mng.first_name,
	   mng.last_name,
	   loc.city
	FROM employees AS emp
		JOIN employees AS mng ON emp.manager_id = mng.employee_id
		JOIN departments AS d ON d.department_id = emp.department_id
		JOIN locations AS loc ON loc.location_id = d.location_id;

--Exerxise 10--
SELECT 'Exercise: ' AS ' ', 10 AS ' ';

SELECT jobs.job_title, Avg(emp.salary) AS 'Avarage Salary'
	FROM employees AS emp
		JOIN jobs ON jobs.job_id = emp.job_id
	GROUP BY jobs.job_title;

--Exerxise 11--
SELECT 'Exercise: ' AS ' ', 11 AS ' ';

SELECT jobs.job_title, 
	   emp.first_name, 
	   emp.salary, 
	   emp.salary - jobs.min_salary AS 'Salary - Min_Salary' 
	FROM employees AS emp
		JOIN jobs ON jobs.job_id = emp.job_id
	WHERE emp.salary != jobs.min_salary;

--Exerxise 12--
SELECT 'Exercise: ' AS ' ', 12 AS ' ';
SELECT 'There is ' AS ' ', 'no ' AS ' ', 'jobs_history table ' AS ' ', 'in' AS ' ','HR db' AS ' ';

--Exerxise 13--
SELECT 'Exercise: ' AS ' ', 13 AS ' ';

SELECT DISTINCT 
	   d.department_name,
	   mng.first_name,
	   mng.last_name,
	   mng.hire_date,
	   mng.salary
	FROM employees AS emp
		JOIN employees AS mng ON emp.manager_id = mng.employee_id
		JOIN departments AS d ON d.department_id = mng.department_id
	WHERE GETDATE() - 15 > Year(mng.hire_date);