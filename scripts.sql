--Returns number of each lesson type held per month for a specified year, as well as the total number of lessons during that month.

SELECT TO_CHAR(lessondate, 'MON') AS month, 
    sum(CASE WHEN lessontype = 'single' THEN 1 ELSE 0 END) AS "single lessons", 
    sum(CASE WHEN lessontype = 'group' THEN 1 ELSE 0 END) AS "group lessons", 
    sum(CASE WHEN lessontype != 'group' AND lessontype != 'single' THEN 1 ELSE 0 END) AS ensembles,
    count(lessontype) AS "total lessons" FROM lesson 
        WHERE extract(year FROM lessondate) = 2023
            GROUP BY month order BY month DESC;

--Show number of siblings of each student.
SELECT student.student_id ,count(siblings) AS "Number of Siblings"
    FROM (SELECT student_id FROM sibling UNION ALL SELECT student_id_2 FROM sibling) AS siblings 
        FULL JOIN student ON siblings.student_id=student.student_id GROUP BY siblings, student.student_id ORDER BY sibling DESC;

--returns number of instructors given more than X lessons during the current month.
CREATE VIEW instructor_lessons_per_month AS
    SELECT instructor_ID, count(instructor_id) AS lessons_given FROM lesson 
        WHERE EXTRACT(MONTH FROM lessondate) = EXTRACT(MONTH FROM CURRENT_DATE)
            GROUP BY instructor_ID 
                HAVING count(instructor_id) >= 1
                    ORDER BY lessons_given DESC;

--show ensemble next week AND available slots sorted BY music AND day
SELECT lesson.maxstudents - count(attending_students) AS availableSlots, lessontype AS genre, TO_CHAR(lessondate, 'Day') AS day
    FROM lesson full join attending_students on lesson.lesson_id = attending_students.lesson_id
        WHERE lessontype != 'single' AND lessontype != 'group' AND extract(week FROM lessondate) = extract(week FROM current_date) + 1 
            GROUP BY lessondate, maxstudents, lessontype ORDER BY day, lessontype DESC;
