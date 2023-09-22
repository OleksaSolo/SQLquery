select fullname from students where id in
(SELECT students_id as avggrade
	FROM GRADES
	GROUP BY STUDENTS_ID
	ORDER BY avg(grade) DESC
	LIMIT 5)
