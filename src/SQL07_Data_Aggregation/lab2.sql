USE restaurant;
SELECT department_id , AVG(salary) AS 'Average Salary'
FROM employees
GROUP BY department_id;