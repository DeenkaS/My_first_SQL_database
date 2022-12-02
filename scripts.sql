--Returns number of each lesson type held per month for a specified year, as well as the total number of lessons during that month.
--counts # lessontypes

select extract(month from lessondate) as month, 
sum(case when lessontype = 'single' then 1 else 0 end) as single, 
sum(case when lessontype = 'group' then 1 else 0 end) as group, 
sum(case when lessontype != 'group' and lessontype != 'single' then 1 else 0 end) as ensemble,
count(lessontype) as total
from lesson group by month;

--Show number of siblings of each student.
select distinct student.student_id, count(sibling.student_id), count(sibling.student_id_2) 
from student full join sibling on student.student_id = sibling.student_id 
group by student.student_id order by student.student_id

select sibling.student_id as siblings from sibling union all select sibling.student_id_2 from sibling;
--returns number of instructors given more than X lessons during the current month.


