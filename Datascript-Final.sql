INSERT INTO person (person_ID,firstName,lastName,phone,email,personalNumber)
VALUES
(1,'Jonas','Dåderman','0721234567','jonasdad@mail.se','200001011234'),
(2,'Deniel','Saskin','0729185149','Saskin@kth.se','199208138011'),
(3,'Ingemar','Gerling','0700010001','gerling@mail.se','201002291432'),
(4,'Stephan','Persson','0733334444','Stephan@gmail.com','201003141230'),
(5,'Olle','Berlin','0731230095','Berliner@mail.se','197003205868'),
(6,'Rove','Wierup','0735556666','28cm@hotmail.com','200002021234'),
(7,'Tessla','Wownörd','0700940944','azeroth@mail.se','199908230001'),
(8,'Isabelle','Forsberg','0734056767','forsberg@hockey.se','199906051245'),
(9,'Peter','Otrevlig','0737776666','dryg@hockey.se','190006051245'),
(10,'Oscar','Nyman','0733458876','nyman@hockey.se','199912121245'),
(11,'Jennifer','Svensk','0739876676','js@hockey.se','201206051245'),
(12, 'Mamma', 'Svensk', '0701917151', 'mammaS@mail.se', '197201121268'),
(13, 'Bobby', 'Kotick', '0762095551', 'Kotick@mail.se', '200506171238');

INSERT INTO instructor (instructor_ID,ensemble,person_ID)
VALUES
(0100,'false','1'),
(0101,'true','2'),
(0102,'true','8'),
(0103,'false','5');

INSERT INTO addressInformation (person_ID,city,zip,street)
VALUES
(1, 'Stockholm', '12079', 'Maltgatan 4'),
(2, 'Stockholm', '17751', 'Jakobsbergsgatan 12'),
(3, 'Stockholm', '15512', 'Kthgatan 19'),
(4, 'Stockholm', '12363', 'Dominovägen 4'),
(5, 'Stockholm', '12077', 'Henrikdalsgatan 8'),
(6, 'Stockholm', '11111', 'Rikemansgatan 9'),
(7, 'Stockholm', '13337', 'Stormvindsgatan 60'),
(8, 'Linköping', '12455', 'Borgvägen 5'),
(9, 'Borås', '42069', 'Otrevlighetsgatan 75'),
(10, 'Stockholm', '16789', 'Läkargatan 1'),
(11, 'Uppsala', '12433', 'Sverigegatan 42');

INSERT INTO lesson (lesson_ID,skillLevel,timeSlot,instrument,maxStudents,minStudents,lessonType,instructor_ID)
VALUES
(1101, 'beginner', '1669710600', 'guitar', 1, 1, 'single', 'I1'),
(1102, 'intermediate', '1669710600', null, 5, 2, 'rock', 'I2'),
(1103, 'intermediate', '1666261800', 'piano', 1,1 'single', 'I4'),
(1104, 'beginner', '1666002600','flute', 10,2 'group', 'I4'),
(1104, 'advanced', '1665831600', 'guitar', 3,1,'group', 'I1'),
(1105, 'intermediate', '1667566800', 'violin', 1,1, 'single','I2'),
(1106, 'beginner', '1667725200', null, 4,2, 'jazz', 'I3'),
(1107, 'advanced', '1667300400', null, 6,3, 'jazz', 'I3'),
(1108, 'beginner', '1667923200', 'violin', 1,1, 'single', 'I2'),
(1109, 'intemerdiate', '1668096000', 'guitar', 1,1,'single', 'I1');

INSERT INTO student (student_ID,sibling,person_ID)
VALUES
(2100,'True','3'),
(2101,'True','4'),
(2102,'False', '6'),
(2103,'False', '7'),
(2104,'True', '10'),
(2105,'True', '11'),
(2106,'True', '13');

INSERT INTO contactPerson(student_ID, person_ID)
(2100, '9'),
(2101, '9'),
(2102, '6'),
(2103, '7'),
(2104, '10'),
(2105, '12'),
(2106, '9');

INSERT INTO sibling(student_ID, student_ID_2)
(2100, 2101),
(2100, 2106),
(2101, 2106),
(2105, 2104);


INSERT INTO rentedInstruments(instrument_ID, priceCurrent,brand,rentedInstrumentType)
('RI1', 250, 'Mercedes', 'guitar'),
('RI2', 250, 'Mercedes', 'guitar'),
('RI3', 350, 'Lambo', 'piano'),
('RI4', 500, 'Nissan', 'flute'),
('RI5', 250, 'Yamaha', 'violin');


INSERT INTO studentInstrument(student_ID, instrumentType)
('S1', 'guitar'),
('S2', 'guitar'),
('S3', 'piano'),
('S4', 'violin'),
('S5', 'flute'),
('S6', 'flute'),
('S7', 'piano');


INSERT INTO currentlyRentedInstruments(instrument_ID, student_ID, price)
('RI1', 'S2', 230),
('RI2', 'S1', 230),
('RI4', 'S6', 500);


INSERT INTO instructorInstrument(instructor_ID. instrumentType)
('I1', 'guitar'),
('I2', 'guitar'),
('I2', 'piano'),
('I2', 'flute'),
('I2', 'violin'),
('I3', 'guitar'),
('I3', 'piano'),
('I3', 'flute'),
('I3', 'violin'),
('I4', 'flute'),
('I4', 'piano');


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
