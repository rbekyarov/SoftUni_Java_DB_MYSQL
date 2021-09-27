public class ТЕОРИЯ_CRUD {


/** ******************** ПРЕИМЕНУВАНЕ НА ТАБЛИЦА КОЛОНА  *************************
                                  Aliases ->AS

 SELECT e.id AS 'No.',
 e.first_name AS 'First Name',
 e.last_name AS 'Last Name',
 e.job_title AS 'Job Title'
 FROM employees AS e ORDER BY id;

 */
/** ********* ПРЕИМЕНУВАНЕ и Обединяване на КОЛОНИ  *************************
                        concat и concat_wc

 SELECT concat(`first_name`,' ',`last_name`) AS 'full_name',
 `job_title` as  'Job Title',
 `id` AS 'No.'
 FROM `employees`;

 */

/** ********* ЕЛИМИНАЦИЯ НА ДУБЛИРАЩИ ЗАПИСИ DISTINCT  *************************

 SELECT DISTINCT `department_id`
 FROM `employees`;


 */
/** ********* Conditions NOT, OR, AND and bracket *************************

 SELECT `last_name` FROM `employees`
 WHERE NOT (`manager_id` = 3 OR `manager_id` = 4);


 /** ********* Conditions BETWEEN *************************

 SELECT `last_name`, `salary` FROM `employees`
 WHERE `salary` BETWEEN 20000 AND 22000;


 /** ********* Conditions IN / NOT IN *************************

 SELECT `first_name`, `last_name`, `manager_id`
 FROM `employees`
 WHERE `manager_id` IN (109, 3, 16);


 /** ********* Conditions IS NULL / IS NOT NULL *************************

 SELECT `last_name`, `manager_id`
 FROM `employees`
 WHERE `manager_id` IS NULL;


 SELECT `last_name`, `manager_id`
 FROM `employees`
 WHERE `manager_id` IS NOT NULL;


 /** ********* Conditions IS NULL / IS NOT NULL *************************

 SELECT `last_name`, `manager_id`
 FROM `employees`
 WHERE `manager_id` IS NULL;


 SELECT `last_name`, `manager_id`
 FROM `employees`
 WHERE `manager_id` IS NOT NULL;


 /** ********* ORDER BY ASC/DESC ************************************

 SELECT `last_name`, `hire_date`
 FROM `employees`
 ORDER BY `hire_date`;


 SELECT `last_name`, `hire_date`
 FROM `employees`
 ORDER BY `hire_date` DESC;


 /** *************** VIEWS *******************************************

 CREATE VIEW `v_hr_result_set` AS SELECT
 CONCAT(`first_name`,' ',`last_name`) AS 'Full Name', `salary`
 FROM `employees` ORDER BY `department_id`;

 SELECT * FROM `v_hr_result_set`;



 CREATE VIEW `v_top_paid_employee`
 AS
 SELECT * FROM `employees`
 ORDER BY `salary` DESC LIMIT 1;
 SELECT * FROM `v_top_paid_employee`;


 /** ********* INSERTING DATA ************************************

 SELECT `first_name`, `last_name`, `manager_id`
 FROM `employees`
 WHERE `manager_id` IN (109, 3, 16);


 INSERT INTO projects(name, start_date)
 SELECT CONCAT(name,' ', ' Restructuring'), NOW()
 FROM departments;


 /** ********* UPDATING DATA **********************************

 UPDATE `employees`
 SET `last_name` = 'Brown'
 WHERE `employee_id` = 1;


 UPDATE `employees`
 SET `salary` = `salary` * 1.10,
 `job_title` = CONCAT('Senior',' ', `job_title`)
 WHERE `department_id` = 3;


 /** ********* DELETING DATA ************************************

 DELETE FROM `employees`
 WHERE `employee_id` = 1;

 TRUNCATE TABLE users;
 DELETE FROM employees
 WHERE department_id = 1
 OR department_id = 2;
 SELECT * FROM employees

 /** ********* IF ПРОВЕРКА В SQL ************************************

 IF(currency_code = 'EUR', 'Euro', 'Not Euro')
           условие         true       false
 */
}
