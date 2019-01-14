create database db01234567;

use db01234567;

SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS diary;
DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS class;
DROP TABLE IF EXISTS course;
DROP TABLE IF EXISTS teacher;




/* Create Tables */

CREATE TABLE class
(
	class_code varchar(3) NOT NULL,
	course_code varchar(3) NOT NULL,
	grade int NOT NULL,
	class_name varchar(2),
	teacher_code varchar(3) NOT NULL,
	PRIMARY KEY (class_code)
);


CREATE TABLE course
(
	course_code varchar(3) NOT NULL,
	course_name varchar(128) NOT NULL,
	PRIMARY KEY (course_code)
);


CREATE TABLE diary
(
	class_code varchar(3) NOT NULL,
	insert_date datetime NOT NULL,
	student_id varchar(7) NOT NULL,
	good_point varchar(30),
	bad_point varchar(30),
	student_comment varchar(30),
	teacher_comment varchar(30),
	PRIMARY KEY (class_code, insert_date)
);


CREATE TABLE student
(
	student_id varchar(7) NOT NULL,
	class_code varchar(3) NOT NULL,
	student_name varchar(128) NOT NULL,
	student_password varchar(128) NOT NULL,
	PRIMARY KEY (student_id)
);


CREATE TABLE teacher
(
	teacher_code varchar(3) NOT NULL,
	teacher_name varchar(128) NOT NULL,
	PRIMARY KEY (teacher_code)
);



/* Create Foreign Keys */

ALTER TABLE diary
	ADD FOREIGN KEY (class_code)
	REFERENCES class (class_code)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE student
	ADD FOREIGN KEY (class_code)
	REFERENCES class (class_code)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE class
	ADD FOREIGN KEY (course_code)
	REFERENCES course (course_code)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE diary
	ADD FOREIGN KEY (student_id)
	REFERENCES student (student_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE class
	ADD FOREIGN KEY (teacher_code)
	REFERENCES teacher (teacher_code)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;
