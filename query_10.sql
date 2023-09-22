select name from courses where teachers_id=1 and id IN 
(select course_id from grades where students_id=1)