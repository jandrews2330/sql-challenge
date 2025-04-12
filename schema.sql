CREATE TABLE titles (
    title_id VARCHAR PRIMARY KEY,
    title VARCHAR
);

CREATE TABLE employees (
    emp_no INTEGER PRIMARY KEY,
    title_id VARCHAR,
    birth_date DATE,
    first_name VARCHAR,
    last_name VARCHAR,
    sex CHAR(1),
    hire_date DATE
    FOREIGN KEY (title_id) REFERENCES titles(title_id)
);

CREATE TABLE salaries (
    salary_id SERIAL PRIMARY KEY,
    emp_no INTEGER NOT NULL,
    salary INTEGER,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE departments(
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR NOT NULL
);

CREATE TABLE dept_manager(
    dept_mgr_id SERIAL PRIMARY KEY,
    dept_no VARCHAR NOT NULL,
    emp_no INTEGER NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_emp(
    dept_emp_id SERIAL PRIMARY KEY,
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);





