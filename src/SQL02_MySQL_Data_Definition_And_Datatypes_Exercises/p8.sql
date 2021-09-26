ALTER TABLE `peoples`.`users`
DROP PRIMARY KEY;

ALTER TABLE `peoples`.`users`
ADD PRIMARY KEY(id, user);