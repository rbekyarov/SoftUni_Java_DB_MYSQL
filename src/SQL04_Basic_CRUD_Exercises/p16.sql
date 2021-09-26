use soft_uni;
CREATE VIEW v_employees_job_titles  As
SELECT CONCAT_WS(' ',first_name,middle_name, last_name)AS full_name ,job_title
FROM employees;

SELECT * FROM v_employees_job_titles;