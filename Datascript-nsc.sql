INSERT INTO person (firstName,lastName,phone,email,personalNumber)
VALUES
('Jonas','Daderman','0721234567','jonasdad@mail.se','200001011234'), --ins
('Deniel','Saskin','0729185149','Saskin@kth.se','199208138011'), --ins
('Ingemar','Otrevlig','0700010001','gerling@mail.se','201002291432'), --stu
('Stephan','Otrevlig','0733334444','Stephan@gmail.com','201003141230'), --stu
('Olle','Berlin','0731230095','Berliner@mail.se','197003205868'), --ins
('Rove','Wierup','0735556666','28cm@hotmail.com','200002021234'), --stu
('Tessla','Svensk','0700940944','azeroth@mail.se','199908230001'), --stu
('Isabelle','Forsberg','0734056767','forsberg@hockey.se','199906051245'), --ins
('Peter','Otrevlig','0737776666','dryg@hockey.se','190006051245'), --CP
('Oscar','Nyman','0733458876','nyman@hockey.se','199912121245'), --stu
('Jennifer','Svensk','0739876676','js@hockey.se','201206051245'), --stu
('Mamma', 'Svensk', '0701917151', 'mammaS@mail.se', '197201121268'), --CP
('Bobby', 'Otrevlig', '0762095551', 'Kotick@mail.se', '200506171238'); --stu

--insert into student(person_id) VALUES ((SELECT person_id from person));

INSERT INTO instructor (ensemble,person_ID)
VALUES
('false',1),
('true',2),
('true',8),
('false',5);

INSERT INTO addressInformation (person_ID,city,zip,street)
VALUES
(1,'Stockholm', '12079', 'Maltgatan 4'),
(2,'Stockholm', '17751', 'Jakobsbergsgatan 12'),
(3,'Stockholm', '15512', 'Kthgatan 19'),
(4,'Stockholm', '15512', 'Kthgatan 19'),
(5,'Stockholm', '12077', 'Henrikdalsgatan 8'),
(6,'Stockholm', '11111', 'Rikemansgatan 9'),
(7,'Stockholm', '13337', 'Stormvindsgatan 60'),
(8,'Linkoping', '12455', 'Borgvagen 5'),
(9,'Boras', '42069', 'Otrevlighetsgatan 75'),
(10,'Stockholm', '16789', 'Lakargatan 1'),
(11,'Uppsala', '12433', 'Sverigegatan 42'),
(12,'Uppsala', '12433', 'Sverigegatan 42'),
(13, 'Stockholm', '15512', 'Kthgatan 19');

INSERT INTO lesson (skillLevel,instrument,maxStudents,minStudents,lessonType,instructor_ID, lessonDate, starttime, endTime)
VALUES
('beginner',  'guitar', 1, 1, 'single', 1,'2022-10-13','12:30', '14:30'),
('intermediate',  null, 5, 2, 'rock', 2,'2022-10-16','08:00', '10:00'),
('intermediate', 'piano', 1,1, 'single', 4,'2022-10-22', '14:00', '16:00'),
( 'beginner', 'flute', 10,2, 'group', 4, '2022-11-04', '13:00', '15:00'),
( 'advanced',  'guitar', 3,1,'group', 1,'2022-11-04', '15:00', '17:00'),
( 'intermediate',  'violin', 1,1, 'single',2,'2022-11-06', '14:15', '16:45'),
( 'beginner', null, 4,2, 'jazz', 3,'2022-11-13', '13:37', '15:37'),
( 'advanced',  null, 6,3, 'jazz', 3,'2022-11-24', '09:00', '11:00'),
( 'beginner', 'violin', 1,1, 'single', 2,'2022-12-24', '15:00', '17:00'),
( 'intermediate',  'guitar', 1,1,'single', 1,'2022-12-31', '10:00', '12:00');

INSERT INTO student (sibling,person_ID)
VALUES
('True',3),
('True',4),
('False', 6),
('False', 7),
('True', 10),
('True', 11),
('True', 13);

INSERT INTO contactPerson(student_ID, person_ID)
VALUES
(1, 9),
(2, 9),
(3, 6),
(4, 7),
(5, 10),
(6, 12),
(7, 9);

INSERT INTO sibling(student_ID, student_ID_2)
VALUES
(1, 2),
(1, 7),
(2, 7),
(5, 6);


INSERT INTO rentedInstruments(priceCurrent,brand,rentedInstrumentType)
VALUES
( 250, 'Mercedes', 'guitar'),
( 250, 'Mercedes', 'guitar'),
( 350, 'Lambo', 'piano'),
( 500, 'Nissan', 'flute'),
( 250, 'Yamaha', 'violin');


INSERT INTO studentInstrument(student_ID, instrumentType)
VALUES
(1, 'guitar'),
(2, 'guitar'),
(3, 'piano'),
(4, 'violin'),
(5, 'flute'),
(6, 'flute'),
(7, 'piano');


INSERT INTO currentlyRentedInstruments(instrument_ID, student_ID, price)
VALUES
(1,1,230),
(2,2,230),
(4,5,500);


INSERT INTO instructorInstrument(instructor_ID, instrumentType)
VALUES
(1,'guitar'),
(2, 'piano'),
(3, 'flute'),
(4, 'violin');


INSERT INTO price(lesson_ID, siblingDiscountFactor, price)
VALUES
(1,0.8,300),
(2,0.8,500),
(3,0.8,500),
(4,0.8,300),
(5,0.8,600),
(6,0.8,500),
(7,0.8,300),
(8,0.8,600),
(9,0.8,300),
(10,0.8,500);

INSERT INTO attending_students(student_ID, lesson_ID)
VALUES
(1,1),
(2,2),
(3,2),
(1,2),
(7,3),
(5,4),
(6,4),
(1,5),
(2,5),
(4,6),
(6,7),
(4,7),
(7,7),
(6,8),
(4,8),
(7,8),
(4,9),
(2,10);



INSERT INTO availabilitySlots(instructor_ID, aStartTime,aEndTime, aDate)
VALUES
(1, '12:00', '14:00', '2023-01-01'),
(1, '14:00', '16:00', '2023-01-01'),
(1, '08:00', '12:00', '2023-01-03'),
(1, '16:00', '18:00', '2023-01-05'),
(2, '12:00', '14:00', '2023-01-01'),
(2, '14:00', '16:00', '2023-01-02'),
(2, '08:00', '12:00', '2023-01-04'),
(2, '16:00', '18:00', '2023-01-06'),
(3, '12:00', '14:00', '2023-01-07'),
(3, '14:00', '16:00', '2023-01-08'),
(3, '08:00', '12:00', '2023-01-09'),
(3, '16:00', '18:00', '2023-01-10'),
(4, '12:00', '14:00', '2023-02-01'),
(4, '14:00', '16:00', '2023-02-01'),
(4, '08:00', '12:00', '2023-02-03'),
(4, '16:00', '18:00', '2023-02-05');

--CREATE TYPE instrument AS ENUM ('piano', 'guitar', 'violin','flute'); 
--CREATE TYPE sLevel AS ENUM ('beginner', 'intermediate', 'advanced');