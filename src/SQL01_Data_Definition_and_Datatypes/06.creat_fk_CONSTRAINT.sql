ALTER TABLE `gamebar`.`products`
ADD CONSTRAINT `my_fk`
  FOREIGN KEY (`category_id`)
  REFERENCES `gamebar`.`categories` (`id`)
  ON DELETE NO ACTION
  ON UPDATE CASCADE;