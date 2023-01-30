SELECT first_name, last_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;
SELECT first_name, last_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name DESC;
SELECT first_name, last_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name ASC, last_name ASC;
SELECT first_name, last_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name DESC, last_name DESC;
SELECT first_name, last_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name ASC, first_name ASC;
SELECT first_name, last_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name DESC, first_name DESC;
SELECT emp_no, first_name, last_name FROM employees WHERE last_name LIKE '%E' AND last_name LIKE 'E%' ORDER BY emp_no ASC;
SELECT emp_no, first_name, last_name FROM employees WHERE last_name LIKE '%E' AND last_name LIKE 'E%' ORDER BY emp_no DESC;
SELECT count(*) FROM employees WHERE last_name LIKE '%E' AND last_name LIKE 'E%' ORDER BY emp_no ASC;
SELECT count(*) FROM employees WHERE last_name LIKE '%E' AND last_name LIKE 'E%' ORDER BY hire_date ASC;
SELECT first_name, last_name, hire_date FROM employees WHERE last_name LIKE '%E' AND last_name LIKE 'E%' ORDER BY hire_date ASC;
SELECT first_name, last_name, hire_date FROM employees WHERE last_name LIKE '%E' AND last_name LIKE 'E%' ORDER BY hire_date DESC;
SELECT count(*) FROM employees WHERE hire_date <= '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%12-25%';
SELECT first_name, last_name, hire_date FROM employees WHERE hire_date <= '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%12-25%' ORDER BY hire_date ASC;
SELECT first_name, last_name, hire_date FROM employees WHERE hire_date <= '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%12-25%' ORDER BY hire_date DESC;

show databases;

use employees;

select CONCAT(first_name, last_name) AS full_name
FROM employees
WHERE last_name LIKE 'E%E';

select CONCAT(UPPER(first_name), UPPER(last_name)) AS full_name
FROM employees
WHERE last_name LIKE 'E%E';

show databases;
use employees;
show tables;

SELECT * FROM employees LIMIT 10;

SELECT * FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%12-25';
SELECT DATEDIFF(NOW(), hire_date) FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%12-25';

SHOW databases;
use employees;
show tables;

SELECT MIN(salary), MAX(salary)
FROM salaries
where to_date = '9999-01-1';


SELECT LOWER(CONCAT(substr(first_name, 1, 1), substr(last_name, 1, 4), '_', MONTH(birth_date), substr(YEAR(birth_date), 3, 2))) FROM employees LIMIT 10;

SELECT
lower(
CONCAT(substr(first_name, 1, 1)
    , substr(last_name, 1, 4)
    , '_'
    , lpad(month(birth_date), 2, 0)
    , substr(birth_date, 3, 2)
    )
    ) as username
from employees;
    


