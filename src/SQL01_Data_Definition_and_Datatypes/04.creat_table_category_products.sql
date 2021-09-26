CREATE TABLE `gamebar`.`categories` (
  `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL);

CREATE TABLE `gamebar`.`products` (
  `id` INT PRIMARY KEY  NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `category_id` INT NOT NULL);