CREATE DATABASE ex4;
CREATE TABLE ex4.teachers (
    teacher_id INT PRIMARY KEY ,
    name VARCHAR(40) NOT NULL ,
    manager_id INT
);
INSERT INTO ex4.teachers (teacher_id, name, manager_id) VALUES
( 101,'John' , NULL),
( 102,'Maya' , '106'),
( 103,'Silvia' , '106'),
( 104,'Ted' , '105'),
( 105,'Mark' , '101'),
( 106,'Greta' , '101');

ALTER TABLE ex4.teachers
ADD CONSTRAINT fk_manager_id_teacher_id
FOREIGN KEY (manager_id)
REFERENCES teachers(teacher_id);
