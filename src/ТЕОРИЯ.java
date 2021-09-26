public class ТЕОРИЯ {

   /*
**************************** Schema КОМАНДИ *************************************

           СЪЗДАВАНЕ:
           CREATE SCHEMA `name_database`;
           CREATE SCHEMA `name_database` Default CHARACTER SET utf8mb4;
           CREATE SCHEMA `name_database` Default CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

           ИЗТРИВАНЕ:
           DROP SCHEMA `name_database`;
           DROP SCHEMA IF EXISTS `name_database`;

**************************** Създаване на таблица *************************************

           CREATE TABLE `gamebar`.`employees` (
           `id` PRIMARY KEY INT NOT NULL AUTO_INCREMENT,
           `first_name` VARCHAR(45) NOT NULL,
           `last_name` VARCHAR(45) NOT NULL );

**************************** ИНДЕКСИРАНЕ НА ФК(форинт кий) *************************************

            ALTER TABLE `gamebar`.`products`
            ADD INDEX `fk_categories_ind` (`category_id` ASC) VISIBLE;

***************************** СЪЗДАВАНЕ НА ФОРИНТ КИЙ *************************************

            ALTER TABLE `gamebar`.`products`
            ADD CONSTRAINT `my_fk`
            FOREIGN KEY (`category_id`)
            REFERENCES `gamebar`.`categories` (`id`)
            ON DELETE NO ACTION
            ON UPDATE CASCADE;

***************************** Пълнене на Таблица - INSERT INTO *************************************

 INSERT INTO `employees` (`first_name`, `last_name`) VALUES
('Ivan', 'Petrov'),
('Hristo', 'Georgiev'),
('Dimitur', 'Todorov');



 ***************************** ЛИСТВАНЕ НА ТАБЛИЦА SELECT * FROM *************************************

     SELECT * FROM gamebar.employees; - листва цялата таблица

     SELECT first_name, last_name FROM gamebar.employees - листва само две от колоните и два записа
     limit 2;

***************************** Добавяне на нова колона в таблица *************************************

                ALTER TABLE `gamebar.employees`
                ADD COLUMN `salary`  DECIMAL(10,2);

                ALTER TABLE `employees`
                ADD COLUMN `middle_name`  Varchar(50) NOT NULL DEFAULT '';

***************************** Добавяне на стойности в новата колона *************************************

            UPDATE `gamebar`.`employees` SET `salary` = '500' WHERE (`id` = '1');
            UPDATE `gamebar`.`employees` SET `salary` = '500' WHERE (`id` = '2');
            UPDATE `gamebar`.`employees` SET `salary` = '500' WHERE (`id` = '3');


***************************** Модифициране на колоната *************************************

    ALTER TABLE `employees`
    Modify COLUMN `middle_name`  Varchar(100);

    ALTER TABLE `hotel`.`employees`
   MODIFY COLUMN `salary`  DECIMAL(10,2);


* ***************************** Изтриване на данни *************************************

    Truncate table `employees`;
    DROP TABLE `employees`; // изтрива цялата таблица
     DROP DATABASE `gamebar`; // изтрива базата

    ALTER TABLE employess
    DROP FOREIGN KEY my_fk; //изтрива ключа

    ********** ИЗтриване на PRIMARY KEY**********

                ALTER TABLE `peoples`.`users`

               DROP PRIMARY KEY;
;
* ***************************** ПРЕМЕСТВАНЕ НА КОЛОНА В ТАБЛИЦА*************************

ALTER TABLE `gamebar`.`employees`
CHANGE COLUMN `middle_name` `middle_name` VARCHAR(100) NULL DEFAULT NULL AFTER `first_name`;

* ***************************** ПРЕИМЕНУВАНЕ НА КОЛОНА  *************************

 ALTER TABLE `minions`.`towns` RENAME COLUMN town_id TO id;
             //база   //таблица          // колона    // ново име



    */

}
