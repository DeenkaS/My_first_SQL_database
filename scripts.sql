--Returns number of each lesson type held per month for a specified year, as well as the total number of lessons during that month.
--counts # lessontypes
select count(case when lessontype = 'single' then 1 else null end) as single,
count(case when lessontype = 'group' then 1 else null end) as group,
count(case when lessontype != 'group' and lessontype != 'single' then 1 else null end) as ensemble from lesson;

select lessondate, extract(month from lessondate) as month from lesson;

select extract(month from lessondate) as month,
    case(when lessontype = 'single' then 1 else null end) as single,
    case when lessontype = 'group' then 1 else null end as group,
    case when lessontype != 'group' and lessontype != 'single' then 1 else null end as ensemble 
    from lesson;
    

--Show number of siblings of each student.



--returns number of instructors given more than X lessons during the current month.


