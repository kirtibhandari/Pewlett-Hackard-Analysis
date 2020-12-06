-- Deliverable 1: 
--A. retirement_titles table query for employees who are born between January 1, 1952 and December 1955

SELECT e.emp_no, e.first_name, e.last_name,t.title,t.from_date,t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;

--B. unique_titles table with most recent title
-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (r.emp_no) r.emp_no, r.first_name, r.last_name, r.title
INTO unique_titles
FROM retirement_titles as r
ORDER BY r.emp_no, r.to_date DESC;

--C. retiring_titles table containing number of titles filled by employees who are retiring
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT DESC;


-- Deliverable 2
-- mentorship_elgibility table that holds the current employees who were born between January1,1965 and December 31, 1965
SELECT DISTINCT ON (e.emp_no) e.emp_no,e.first_name, e.last_name, 
e.birth_date, d.from_date,d.to_date,t.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as d ON (e.emp_no = d.emp_no)
INNER JOIN titles as t ON (e.emp_no = t.emp_no)
WHERE d.to_date='9999-01-01' AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')  
ORDER BY e.emp_no;

--Deliverabel 3
-- Total number of employees retiring were obtained in ADDITIONAL table retiring_employees, and results 
--stored in retiring_employees.csv because unique_titles did not filter out the employees who already retired.
SELECT DISTINCT ON (r.emp_no) r.emp_no, r.first_name, r.last_name, r.title, r.to_date
INTO retiring_employees
FROM retirement_titles as r
WHERE r.to_date ='9999-01-01'
ORDER BY r.emp_no, r.to_date DESC;


--Additional table for seeing department wise retirements, results saved in retiring_department_wise.csv
SELECT COUNT(title), dp.dept_name
INTO retiring_department_wise
FROM unique_titles as u
INNER JOIN dept_emp as d ON (u.emp_no = d.emp_no)
INNER JOIN departments as dp ON (d.dept_no = dp.dept_no)
WHERE d.to_date = '9999-01-01'
GROUP BY dp.dept_name
ORDER BY COUNT DESC;


--Additional Table for Deaprtment wise Mentorship eligibility, results saved in mentorship_eligibility_dept_wise.csv
SELECT COUNT (e.emp_no), dp.dept_name 
INTO mentorship_eligibility_dept_wise
FROM employees as e
INNER JOIN dept_emp as d ON (e.emp_no = d.emp_no)
INNER JOIN departments as dp ON (d.dept_no = dp.dept_no)
WHERE d.to_date='9999-01-01' 
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') 
GROUP BY dp.dept_name
ORDER BY COUNT DESC;

