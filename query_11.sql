select avg(grade) from grades where students_id-21 and course_id in
(select course_id from courses where teachers_id=3)