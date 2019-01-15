delete from diary;
delete from student;
delete from class;
delete from teacher;
delete from course;

INSERT INTO course (course_code,course_name) VALUES('001','情報システム専攻科');
INSERT INTO course (course_code,course_name) VALUES('002','情報システム科');

INSERT INTO teacher (teacher_code,teacher_name) VALUES('001','西野直幸');
INSERT INTO teacher (teacher_code,teacher_name) VALUES('002','姫野マリ');

INSERT INTO class (class_code,course_code,grade,class_name,teacher_code) VALUES('001','001',1,'A','001');
INSERT INTO class (class_code,course_code,grade,class_name,teacher_code) VALUES('002','002',1,'B','001');
INSERT INTO class (class_code,course_code,grade,class_name,teacher_code) VALUES('003','002',2,'A','002');

INSERT INTO student (student_id,class_code,student_name,student_password) VALUES('0000001','001','江成利平','ena');
INSERT INTO student (student_id,class_code,student_name,student_password) VALUES('0000002','001','下山守彦','shimo');
INSERT INTO student (student_id,class_code,student_name,student_password) VALUES('0000003','002','堀井亨','hori');
INSERT INTO student (student_id,class_code,student_name,student_password) VALUES('0000004','002','柳川莉歩','yana');
INSERT INTO student (student_id,class_code,student_name,student_password) VALUES('0000005','003','竹内裕司','take');

INSERT INTO diary (class_code,insert_date,student_id,good_point,bad_point,student_comment,teacher_comment) VALUES('001','2018/11/1','0000001','<b>みんな集中していた</b>','<script>alert("aa");</script>','学生コメント１',null);
INSERT INTO diary (class_code,insert_date,student_id,good_point,bad_point,student_comment,teacher_comment) VALUES('001','2018/11/3','0000002','<input type="text" >','竹内君が寝てた','学生コメント２',null);
INSERT INTO diary (class_code,insert_date,student_id,good_point,bad_point,student_comment,teacher_comment) VALUES('002','2018/11/5','0000003','<td>aaabbbb</td>','遅刻者がいた','学生コメント３',null);
INSERT INTO diary (class_code,insert_date,student_id,good_point,bad_point,student_comment,teacher_comment) VALUES('002','2018/11/4','0000004','全員朝からそろっていた','一部の生徒がうるさかった','学生コメント４',null);
INSERT INTO diary (class_code,insert_date,student_id,good_point,bad_point,student_comment,teacher_comment) VALUES('003','2018/11/2','0000005','就職がみんな決まった','みんな集中していなかった','学生コメント５',null);
