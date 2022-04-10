--JOINING TWO TABLES AND CREATING A NEW RETIREMENT TABLE BY TITLE
SELECT e.emp_no,
    e.first_name,
e.last_name,
ti.title,
ti.from_date,
ti.to_date
INTO retirement_titles
FROM employees as e
LEFT JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE (birth_date BETWEEN '1952-01-01' and '1955-12-31')
ORDER BY e.emp_no;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no)
rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE rt.to_date = '9999-01-01' 
ORDER BY rt.emp_no ASC, rt.to_date DESC;

-- Number of employees by their most recent job title who are about to retire and new table
SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT DESC

--JOINING TWO TABLES AND CREATING A NEW RETIREMENT TABLE BY TITLE
SELECT DISTINCT ON (e.emp_no)
e.emp_no,
    e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
ti.title
INTO mentorship_eligibility
FROM employees as e
LEFT JOIN  dept_emp as de
ON e.emp_no = de.emp_no
left JOIN titles as ti
On e.emp_no = ti.emp_no
WHERE de.to_date = '9999-01-01' 
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

-- Number of employees by their most recent job title who are eligible for mentorship
SELECT COUNT(me.emp_no), me.title
FROM mentorship_eligibility as me
GROUP BY me.title
ORDER BY COUNT DESC