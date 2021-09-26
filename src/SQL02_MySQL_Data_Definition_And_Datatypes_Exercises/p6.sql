CREATE TABLE `peoples`.`people`(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(200) NOT NULL ,
picture BLOB,
height DOUBLE(3,2),
weight DOUBLE(5,2),
gender CHAR(1) NOT NULL ,
birthdate DATE NOT NULL ,
biography TEXT
);


INSERT INTO `peoples`.`people`
(`id`,`name`,`height`,`weight`,`gender`,`birthdate`)
VALUES
    (1,'Sara','1.65','60.00','F','1982-06-10'),
    (2,'Miro','1.75','90.00','M','1972-01-15'),
    (3,'Galya','1.45','65.00','F','1982-04-17'),
    (4,'Pesho','1.85','60.00','M','1982-01-11'),
    (5,'Ivan','1.95','102.00','M','1982-06-17');