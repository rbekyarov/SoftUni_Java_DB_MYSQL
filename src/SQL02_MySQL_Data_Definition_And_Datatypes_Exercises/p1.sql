CREATE TABLE `minions`.`minions` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(40) NOT NULL ,
    age INT

);

CREATE TABLE `minions`.`towns`(
    town_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20)
);