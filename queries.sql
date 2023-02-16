
--*********************************************
--DATA ANALYSIS
--*********************************************

-- List the employee number, last name, first name, sex, and salary of each employee (2 points)
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
salaries.emp_no = employees.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date between '1986-01-01' and '1986-12-31';

-- List the manager of each department along with their department number, department name, employee number,
-- last name, and first name (2 points)
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
JOIN departments ON
dept_manager.dept_no = departments.dept_no
JOIN employees On
employees.emp_no = dept_manager.emp_no

-- List the department number for each employee along with that employee’s employee number,
-- last name, first name, and department name (2 points)
SELECT dept_emp.dept_no, employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
JOIN departments On
dept_emp.dept_no = departments.dept_no

-- List first name, last name, and sex of each employee whose first name is Hercules 
-- and whose last name begins with the letter B (2 points)
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name
SELECT departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM departments
JOIN dept_emp ON
departments.dept_no = dept_emp.dept_no
JOIN employees On
dept_emp.emp_no = employees.emp_no
WHERE dept_name = 'Sales'

-- List each employee in the Sales and Development departments, including their employee number,
-- last name, first name, and department name (4 points)
SELECT departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM departments
JOIN dept_emp ON
departments.dept_no = dept_emp.dept_no
JOIN employees On
dept_emp.emp_no = employees.emp_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'
ORDER BY "dept_name" DESC;

-- List the frequency counts, in descending order, of all the employee last names 
-- (that is, how many employees share each last name) (4 points)
SELECT last_name, COUNT (last_name) AS "lastname_freq"
FROM employees
GROUP BY last_name
ORDER BY "lastname_freq" DESC;


