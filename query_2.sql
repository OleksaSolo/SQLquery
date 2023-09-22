select fullname from students where id in
(SELECT students_id as avggrade
	FROM GRADES
	WHERE course_id=5
	GROUP BY STUDENTS_ID
	ORDER BY avg(grade) DESC
	LIMIT 1)