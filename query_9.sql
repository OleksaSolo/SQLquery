select name from courses where id IN 
(select course_id from grades where students_id=21)