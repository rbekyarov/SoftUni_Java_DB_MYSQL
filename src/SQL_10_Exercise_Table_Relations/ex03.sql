CREATE DATABASE ex3;
CREATE TABLE ex3.students (
    student_id INT PRIMARY KEY AUTO_INCREMENT ,
    name VARCHAR(40) NOT NULL
);
CREATE TABLE ex3.exams (
    exam_id INT PRIMARY KEY AUTO_INCREMENT ,
    name VARCHAR(40) NOT NULL
);
INSERT INTO ex3.students (student_id, name) VALUES
(1 ,'Mila' ),
(2 ,'Toni' ),
(3 ,'Ron' );

INSERT INTO ex3.exams (exam_id, name) VALUES
( 101,'Spring MVC' ),
( 102,'Neo4j' ),
( 103,'Oracle 11g' );
CREATE TABLE ex3.students_exams(
    student_id INT,
    exam_id INT,

    CONSTRAINT pk_students_exams
    PRIMARY KEY (student_id, exam_id),

    CONSTRAINT fk_students_exams_students
    FOREIGN KEY (student_id)
    REFERENCES students(student_id),

    CONSTRAINT fk_students_exams_exams
    FOREIGN KEY (exam_id)
    REFERENCES exams(exam_id)
);


INSERT INTO  ex3.students_exams (student_id, exam_id) VALUES
(1 ,101),
(1 ,102),
(2 ,101),
(3 ,103),
(2 ,102),
(2 ,103);