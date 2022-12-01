INSERT INTO person (firstName,lastName,phone,email,personalNumber)
VALUES
('Jonas','Dåderman','0721234567','jonasdad@mail.se','200001011234'), --ins
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

INSERT INTO instructor (instructor_ID,ensemble,person_ID)
VALUES
('false',1),
('true',2),
('true',8),
('false',5);

INSERT INTO addressInformation (person_ID,city,zip,street)
VALUES
('Stockholm', '12079', 'Maltgatan 4'),
('Stockholm', '17751', 'Jakobsbergsgatan 12'),
('Stockholm', '15512', 'Kthgatan 19'),
('Stockholm', '15512', 'Kthgatan 19'),
('Stockholm', '12077', 'Henrikdalsgatan 8'),
('Stockholm', '11111', 'Rikemansgatan 9'),
('Stockholm', '13337', 'Stormvindsgatan 60'),
('Linköping', '12455', 'Borgvägen 5'),
('Borås', '42069', 'Otrevlighetsgatan 75'),
('Stockholm', '16789', 'Läkargatan 1'),
('Uppsala', '12433', 'Sverigegatan 42');

INSERT INTO lesson (skillLevel,timeSlot,instrument,maxStudents,minStudents,lessonType,instructor_ID)
VALUES
('beginner', '1669710600', 'guitar', 1, 1, 'single', 'I1'),
('intermediate', '1669710600', null, 5, 2, 'rock', 'I2'),
('intermediate', '1666261800', 'piano', 1,1 'single', 'I4'),
( 'beginner', '1666002600','flute', 10,2 'group', 'I4'),
( 'advanced', '1665831600', 'guitar', 3,1,'group', 'I1'),
( 'intermediate', '1667566800', 'violin', 1,1, 'single','I2'),
( 'beginner', '1667725200', null, 4,2, 'jazz', 'I3'),
( 'advanced', '1667300400', null, 6,3, 'jazz', 'I3'),
( 'beginner', '1667923200', 'violin', 1,1, 'single', 'I2'),
( 'intemerdiate', '1668096000', 'guitar', 1,1,'single', 'I1');

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
( 9),
( 9),
( 6),
( 7),
( 10),
( 12),
( 9);

INSERT INTO sibling(student_ID, student_ID_2)
(3, 4),
(2100, 2106),
(2101, 2106),
(2105, 2104);


INSERT INTO rentedInstruments(instrument_ID, priceCurrent,brand,rentedInstrumentType)
( 250, 'Mercedes', 'guitar'),
( 250, 'Mercedes', 'guitar'),
( 350, 'Lambo', 'piano'),
( 500, 'Nissan', 'flute'),
( 250, 'Yamaha', 'violin');


INSERT INTO studentInstrument(student_ID, instrumentType)
(3, 'guitar'),
(4, 'guitar'),
(, 'piano'),
(, 'violin'),
(, 'flute'),
(, 'flute'),
(, 'piano');


INSERT INTO currentlyRentedInstruments(instrument_ID, student_ID, price)
(,,230),
(,,230),
(,,500);


INSERT INTO instructorInstrument(instructor_ID. instrumentType)
(,'guitar'),
(, 'guitar'),
(, 'piano'),
(, 'flute'),
(, 'violin'),
(, 'guitar'),
(, 'piano'),
(, 'flute'),
(, 'violin'),
(, 'flute'),
(, 'piano');


INSERT INTO price(price_ID, lesson_ID, siblingDiscountFactor, price)
('Pr1', 'L1',,300),
('Pr2', 'L2',,500),
('Pr3', 'L3',,500),
('Pr4', 'L4',,300),
('Pr5', 'L5',,600),
('Pr6', 'L6',,500),
('Pr7', 'L7',,300),
('Pr8', 'L8',,600),
('Pr9', 'L9',,300),
('Pr10', 'L10',,500);

INSERT INTO attending_students(student_ID, lesson_ID)
('S1','L1'),
('S2','L2'),
('S3', 'L2'),
('S1', 'L2'),
('S7','L3'),
('S5','L4'),
('S6', 'L4'),
('S1','L5'),
('S2', 'L5'),
('S4','L6'),
('S6','L7'),
('S4', 'L7'),
('S7', 'L7'),
('S6','L8'),
('S4', 'L8'),
('S7', 'L8'),
('S4','L9'),
('S2','L10');



INSERT INTO availabilitySlots(instructor_ID, availableSlots)
('I1', 1671706800),
('I1', 1671714000),
('I1', 1671721200),
('I1', 1671771600),
('I2', 1671706800),
('I2', 1671782400),
('I2', 1671807600),
('I2', 1671796800),
('I3', 1671721200),
('I3', 1672124400),
('I3', 1671796800),
('I3', 1671807600),
('I4', 1671807600),
('I4', 1671721200),
('I4', 1671890400),
('I4', 1671858000);

--CREATE TYPE instrument AS ENUM ('piano', 'guitar', 'violin','flute'); 
--CREATE TYPE sLevel AS ENUM ('beginner', 'intermediate', 'advanced');