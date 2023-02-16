--*********************************************
--DATA Engineering
--*********************************************

-- departments ***************

drop table departments;

-- "dept_no","dept_name"

CREATE TABLE departments (
	dept_no VARCHAR,
	dept_name VARCHAR,
	primary key (dept_no)
);

select *
from departments;

-- dept_emp ********************

drop table dept_emp;

-- emp_no,dept_no

CREATE TABLE dept_emp (
	emp_no INT not null,
	dept_no VARCHAR not null,
	primary key (emp_no,dept_no)
--	Foreign Key (dept_no) References departments (dept_no)
);

select *
from dept_emp;

-- dept_manager ********************

drop table dept_manager;

-- dept_no,emp_no

CREATE TABLE dept_manager (
	dept_no VARCHAR not null,
	emp_no INT not null,
	primary key (emp_no),
	Foreign Key (dept_no) References departments (dept_no)
);

select *
from dept_manager;

-- salaries **********************
drop table salaries;

-- emp_no,salary

CREATE TABLE salaries (
	emp_no INT,
	salary INT,
	Primary key(emp_no)
);

select *
from salaries;

-- titles **********************

drop table titles;

-- title_id,title

CREATE TABLE titles (
	title_id VARCHAR,
	title VARCHAR,
	Primary key(title_id)
);

select *
from titles;

-- employees **********************

drop table employees;

-- emp_no,emp_title_id,birth_date,first_name,last_name,sex,hire_date

CREATE TABLE employees (
	emp_no INT not null,
	emp_title_id VARCHAR not null,
	birth_date date not null,
	first_name VARCHAR not null,
	last_name VARCHAR not null,
	sex VARCHAR not null,
	hire_date date not null,
	primary key (emp_no),
	Foreign Key (emp_title_id) References  titles(title_id)
);

select *
from employees;
