delete from teacher;
delete from diary;
delete from class;
delete from student;
delete from course;

INSERT INTO course (course_code,course_name) VALUES('001','情報システム専攻科');
INSERT INTO course (course_code,course_name) VALUES('002','情報システム科');

INSERT INTO teacher (teacher_code,teacher_name) VALUES('001','西野直幸');
INSERT INTO teacher (teacher_code,teacher_name) VALUES('002','姫野マリ');

INSERT INTO class (class_code,course_code,grade,class_name,teacher_code) VALUES('001','001',1,'A','001');
INSERT INTO class (class_code,course_code,grade,class_name,teacher_code) VALUES('002','002',1,'B','001');
INSERT INTO class (class_code,course_code,grade,class_name,teacher_code) VALUES('003','002',2,'A','002');

INSERT INTO student (student_id,class_code,student_name,student_password) VALUES('0000001',1,'江成利平','ena');
INSERT INTO student (student_id,class_code,student_name,student_password) VALUES('0000002',1,'下山守彦','shimo');
INSERT INTO student (student_id,class_code,student_name,student_password) VALUES('0000003',2,'堀井亨','hori');
INSERT INTO student (student_id,class_code,student_name,student_password) VALUES('0000004',2,'柳川莉歩','yana');
INSERT INTO student (student_id,class_code,student_name,student_password) VALUES('0000005',3,'竹内裕司','take');