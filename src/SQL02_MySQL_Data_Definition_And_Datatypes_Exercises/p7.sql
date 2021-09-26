CREATE TABLE `peoples`.`users`(
    id INT PRIMARY KEY AUTO_INCREMENT,
    user VARCHAR(30) UNIQUE NOT NULL ,
    password VARCHAR(26) UNIQUE NOT NULL ,
    profile_picture BLOB,
    last_login_time TIMESTAMP,
    is_deleted BOOLEAN
);

INSERT INTO `peoples`.`users`
(id, user, password,last_login_time, is_deleted)
VALUES
(1,'User1','pass1','1999-12-01 00:12:12',false),
(2,'User2','pass2','1999-12-01 00:12:12',false),
(3,'User3','pass3','1999-12-01 00:12:12',true),
(4,'User4','pass4','1999-12-01 00:12:12',false),
(5,'User5','pass5','1999-12-01 00:12:12',false);