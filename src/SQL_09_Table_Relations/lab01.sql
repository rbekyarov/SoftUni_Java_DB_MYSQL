CREATE TABLE camp.`mountains`
(
    `id`   INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45)     NOT NULL
);

CREATE TABLE camp.`peaks`
(
    id          INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `name`      VARCHAR(45)     NOT NULL,
    mountain_id INT             NOT NULL,
    CONSTRAINT fk_mountain_id
        FOREIGN KEY (mountain_id)
            REFERENCES `mountains` (id) ON UPDATE CASCADE
);