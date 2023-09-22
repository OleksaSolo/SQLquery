select * from GRADES t
inner join (
SELECT *, max(created_at) as maxdate
FROM GRADES WHERE COURSE_ID=5 and STUDENTS_ID IN 
(select id from students where groups_id=3)
) tm on t.created_at = tm.created_at


select * from grades WHERE grades.created_at = (select max(t2.created_at) 
from grades t2 WHERE t2.grade = grades.grade)

select * from grades WHERE grades.created_at = (select max(t2.created_at) 
from grades t2 WHERE t2.grade = grades.grade 
and t2.course_id = 1 and t2.STUDENTS_ID IN 
(select id from students where groups_id=1))



SELECT * FROM GRADES WHERE COURSE_ID=5 and STUDENTS_ID IN 
(select id from students where groups_id=2)