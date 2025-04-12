SELECT 
    e.emp_no,
    e.last_name,
    e.first_name,
    e.sex,
    s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no;

SELECT 
    first_name,
    last_name,
    hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT 
    d.dept_no,
    d.dept_name,
    e.emp_no,
    e.last_name,
    e.first_name
FROM dept_manager dm
JOIN departments d ON dm.dept_no = d.dept_no
JOIN employees e ON dm.emp_no = e.emp_no;

SELECT 
    d.dept_no,
    e.emp_no,
    e.last_name,
    e.first_name,
    dpt.dept_name
FROM dept_emp d
JOIN employees e ON d.emp_no = e.emp_no
JOIN departments dpt ON d.dept_no = dpt.dept_no;

SELECT 
    first_name,
    last_name,
    sex
FROM employees
WHERE first_name = 'Hercules'
  AND last_name LIKE 'B%';

SELECT 
    e.emp_no,
    e.last_name,
    e.first_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

SELECT 
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

SELECT 
    last_name,
    COUNT(*) AS name_count
FROM employees
GROUP BY last_name
ORDER BY name_count DESC;