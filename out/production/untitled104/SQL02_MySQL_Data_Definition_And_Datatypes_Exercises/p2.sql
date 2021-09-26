ALTER TABLE `minions`.`towns` RENAME COLUMN town_id TO id;


ALTER TABLE `minions`.`minions`

    ADD  COLUMN town_id INT;

ALTER TABLE `minions`.`minions`
    ADD CONSTRAINT `my_fk`
        FOREIGN KEY (`town_id`)
        REFERENCES `minions`.`towns` (`id`)
        ON DELETE NO ACTION
        ON UPDATE CASCADE;

