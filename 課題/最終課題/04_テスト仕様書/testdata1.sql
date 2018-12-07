delete from teacher;
delete from diary;
delete from class;
delete from student;
delete from course;

INSERT INTO course (course_code,course_name) VALUES(1,'情報システム専攻科');
INSERT INTO course (course_code,course_name) VALUES(2,'情報システム科');

INSERT INTO teacher (teacher_code,teacher_name) VALUES(1,'西野直幸');
INSERT INTO teacher (teacher_code,teacher_name) VALUES(2,'姫野マリ');

INSERT INTO class (class_code,course_code,grade,class_name,teacher_code) VALUES(1,1,1,'A',1);
INSERT INTO class (class_code,course_code,grade,class_name,teacher_code) VALUES(2,2,1,'B',1);
INSERT INTO class (class_code,course_code,grade,class_name,teacher_code) VALUES(3,2,2,'A',2);

INSERT INTO student (student_id,class_code,student_name,student_password) VALUES(1,1,'江成利平','ena');
INSERT INTO student (student_id,class_code,student_name,student_password) VALUES(2,1,'下山守彦','shimo');
INSERT INTO student (student_id,class_code,student_name,student_password) VALUES(3,2,'堀井亨','hori');
INSERT INTO student (student_id,class_code,student_name,student_password) VALUES(4,2,'柳川莉歩','yana');
INSERT INTO student (student_id,class_code,student_name,student_password) VALUES(5,3,'竹内裕司','take');