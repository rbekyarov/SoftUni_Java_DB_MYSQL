CREATE DATABASE ex1;
CREATE TABLE `ex1`.`passports`(
    passport_id INT PRIMARY KEY AUTO_INCREMENT,
    passport_number VARCHAR(40)NOT NULL UNIQUE
);
CREATE TABLE ex1.people(
    person_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(40) NOT NULL ,
    salary DECIMAL(8,2),
    passport_id INT NOT NULL UNIQUE ,
    CONSTRAINT pk_people_passport
    FOREIGN KEY (passport_id)
    REFERENCES passports(passport_id)

);

INSERT INTO `ex1`.`passports` (`passport_id`, `passport_number`) VALUES
(101, 'N34FG21B'),
(102, 'K65LO4R7'),
(103, 'ZE657QP2');

INSERT INTO `ex1`.`people` (`person_id`, `first_name`,salary,passport_id) VALUES
(1, 'Roberto',43300.00 ,102),
(2, 'Tom',56100.00 ,103),
(3, 'Yana',60200.00 ,101);