SELECT * FROM GRADES WHERE COURSE_ID=5 and STUDENTS_ID IN 
(select id from students where groups_id=2)