--Query 1: Returns number of each lesson type held per month for a specified year, as well as the total number of lessons during that month.

SELECT TO_CHAR(lessondate, 'MON') AS MONTH, 
    SUM(CASE WHEN lessontype = 'single' THEN 1 ELSE 0 END) AS "single lessons", 
    SUM(CASE WHEN lessontype = 'group' THEN 1 ELSE 0 END) AS "group lessons", 
    SUM(CASE WHEN lessontype != 'group' AND lessontype != 'single' THEN 1 ELSE 0 END) AS ensembles,
    COUNT(lessontype) AS "total lessons" FROM lesson 
        WHERE extract(year FROM lessondate) = 2023
            GROUP BY MONTH ORDER BY MONTH DESC;

--Query 2: Show number of students that has 0, 1 or 2 siblings.
Create VIEW list_of_siblings AS
SELECT student.student_id ,COUNT(siblings) AS NoOfSiblings
    FROM (SELECT student_id FROM sibling UNION ALL SELECT student_id_2 FROM sibling) AS siblings 
        FULL JOIN student ON siblings.student_id=student.student_id GROUP BY siblings, student.student_id ORDER BY sibling DESC;

SELECT noOfSiblings as "number of siblings" , COUNT(*) as "amount of students" FROM list_of_siblings GROUP BY noOfSiblings;


--Query 3: returns number of instructors given more than X lessons during the current month.
CREATE VIEW instructor_lessons_per_month AS
    SELECT instructor_ID, COUNT(instructor_id) AS lessons_given FROM lesson 
        WHERE EXTRACT(YEAR FROM lessondate) = EXTRACT(YEAR FROM CURRENT_DATE) AND
            EXTRACT(MONTH FROM lessondate) = EXTRACT(MONTH FROM CURRENT_DATE) 
                GROUP BY instructor_ID 
                    HAVING COUNT(instructor_id) >= 1
                        ORDER BY lessons_given DESC;


--Query 4: show ensemble next week and available slots sorted BY music and day
CREATE VIEW ensemble_query AS
SELECT lesson.maxstudents - COUNT(attending_students) AS availableSlots, lessontype AS genre, TO_CHAR(lessondate, 'Day') AS day
    FROM lesson full join attending_students on lesson.lesson_id = attending_students.lesson_id
        WHERE lessontype != 'single' AND lessontype != 'group' AND extract(week FROM lessondate) = extract(week FROM current_date) + 1 
            GROUP BY lessondate, maxstudents, lessontype ORDER BY day, lessontype DESC;

SELECT genre, (case when availableSlots = 0 THEN 'Fully booked' 
when availableSlots between 1 AND 2 THEN '1-2 seats left' 
when availableSlots > 2 THEN 'Many seats left' END) AS available_slots, day from ensemble_query;
