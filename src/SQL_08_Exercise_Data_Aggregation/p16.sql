use soft_uni;
select DISTINCT department_id , (
    SELECT DISTINCT salary
    FROM    `employees` e
    WHERE   e.`department_id` = `employees`.`department_id`
    order by salary DESC
    LIMIT 1 offset 2) as `third_highest_salary`

from employees
HAVING `third_highest_salary` IS NOT NULL
ORDER BY `department_id`;
