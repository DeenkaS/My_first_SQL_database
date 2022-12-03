--Returns number of each lesson type held per month for a specified year, as well as the total number of lessons during that month.

select TO_CHAR(lessondate, 'MON') as month, 
    sum(case when lessontype = 'single' then 1 else 0 end) as "single lessons", 
    sum(case when lessontype = 'group' then 1 else 0 end) as "group lessons", 
    sum(case when lessontype != 'group' and lessontype != 'single' then 1 else 0 end) as ensembles,
    count(lessontype) as "total lessons" from lesson 
        where extract(year from lessondate) = 2023
            group by month order by month desc;

--Show number of siblings of each student.
SELECT student.student_id ,count(siblings) as "Number of Siblings"
    FROM (SELECT student_id FROM sibling UNION ALL SELECT student_id_2 FROM sibling) as siblings 
        FULL JOIN student ON siblings.student_id=student.student_id group by siblings, student.student_id order by sibling desc;

--returns number of instructors given more than X lessons during the current month.
SELECT instructor_ID, count(instructor_id) AS lessons_given FROM lesson 
    WHERE EXTRACT(MONTH FROM lessondate) = EXTRACT(MONTH FROM CURRENT_DATE)
        GROUP BY instructor_ID 
            HAVING count(instructor_id) >= 1
                ORDER BY lessons_given DESC;

--show ensemble next week and available slots sorted by music and day
select lesson.maxstudents - count(attending_students) as availableSlots, lessontype as genre, TO_CHAR(lessondate, 'Day') as day
    from lesson full join attending_students on lesson.lesson_id = attending_students.lesson_id
        where lessontype != 'single' and lessontype != 'group' and extract(week from lessondate) = extract(week from current_date) + 1 
            group by lessondate, maxstudents, lessontype order by day, lessontype DESC;
