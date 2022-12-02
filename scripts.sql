--Returns number of each lesson type held per month for a specified year, as well as the total number of lessons during that month.
--counts # lessontypes
select sum(case when lessontype = 'single' then 1 else null end) as single,
sum(case when lessontype = 'group' then 1 else null end) as group,
sum(case when lessontype != 'group' and lessontype != 'single' then 1 else null end) as ensemble,
extract(month from lessondate) as month from lesson group by month;
--Show number of siblings of each student.



--returns number of instructors given more than X lessons during the current month.


