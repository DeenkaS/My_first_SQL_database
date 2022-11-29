INSERT INTO person (person_ID,firstName,lastName,phone,email,personalNumber)
VALUES
("1","Jonas","Dåderman","0721234567","jonasdad@mail.se","200001011234" )
("2","Deniel","Saskin","0729185149","Saskin@kth.se","199208138011")
("3","Ingemar","Gerling","0700010001","gerling@mail.se","201002291432")
("4","Stephan","Persson","0733334444","Stephan@gmail.com","201003141230")
("5","Olle","Berlin","0731230095","Berliner@mail.se","197003205868")
("6","Rove","Wierup","0735556666","28cm@hotmail.com","200002021234")
("7","Tessla","Wownörd","0700940944","azeroth@mail.se","199908230001")
("8","Isabelle","Forsberg","0734056767","forsberg@hockey.se","199906051245")
("9","Peter","Otrevlig","0737776666","dryg@hockey.se","190006051245")
("10","Oscar","Nyman","0733458876","nyman@hockey.se","199912121245")
("11","Jennifer","Svensk","0739876676","js@hockey.se","201206051245")
("12", "Mamma", "Svensk", "0701917151", "mammaS@mail.se", "197201121268")
("13", "Bobby", "Kotick", "0762095551", "Kotick@mail.se",, "200506171238")

INSERT INTO instructor (instructor_ID,ensemble,person_ID)
VALUES
("I1","false","1")
("I2","true","2")
("I3","true","8")
("I4","false","5")

INSERT INTO addressInformation (person_ID,city,zip,street)
VALUES
("1", "Stockholm", "12079", "Maltgatan 4")
("2", "Stockholm", "17751", "Jakobsbergsgatan 12")
("3", "Stockholm", "15512", "Kthgatan 19")
("4", "Stockholm", "12363", "Dominovägen 4")
("5", "Stockholm", "12077", "Henrikdalsgatan 8")
("6", "Stockholm", "11111", "Rikemansgatan 9")
("7", "Stockholm", "13337", "Stormvindsgatan 60")
("8", "Linköping", "12455", "Borgvägen 5")
("9", "Borås", "42069", "Otrevlighetsgatan 75")
("10", "Stockholm", "16789", "Läkargatan 1")
("11", "Uppsala", "12433", "Sverigegatan 42")

INSERT INTO lesson (lesson_ID,skillLevel,timeSlot,instrument,maxStudents,minStudents,lessonType,instructor_ID)
VALUES
("L1", "beginner", "1669710600", "guitar", 1, 1, "single", "I1")
("L2", "intermediate", "1669710600", null, 5, 2, "rock", "I2")
("L3", "intermediate", "1666261800", "piano", 1,1 "single", "I4")
("L4", "beginner", "1666002600","flute", 10,3 "group", "I4")
("L5", "advanced", "1665831600", "guitar", 3,1,"group", "I1")
("L6", "intermediate", "1667566800", "drums", 1,1, "single","I2")
("L7", "beginner", "1667725200", null, 4,2, "jazz", "I3")
("L8", "advanced", "1667300400", null, 6,3, "jazz", "I3")
("L9", "beginner", "1667923200", "violin", 5,2, "group", "I2")
("L10", "intemerdiate", "1668096000", "guitar", 1,1,"single", "I1")

INSERT INTO student (student_ID,sibling,person_ID)
VALUES
("S1","True","3")
("S2","True","4")
("S3","False", "6")
("S4","False", "7")
("S5","True", "10")
("S6","True", "11")
("S7","True", "13")

INSERT INTO contactPerson(student_ID, person_ID)
("S1", "9")
("S2", "9")
("S3", "6")
("S4", "7")
("S5", "10")
("S6", "12")
("S7", "9")

INSERT INTO sibling(student_ID, student_ID_2)
("S1", "S2")
("S1", "S7")
("S2", "S7")
("S6", "S5")


INSERT INTO rentedInstruments(instrument_ID, priceCurrent,brand,rentedInstrumentType)
("RI1", 250, "Mercedes", "guitar")
("RI2", 250, "Mercedes", "guitar")
("RI3", 350, "Lambo", "piano")
("RI4", 500, "Nissan", "flute")
("RI5", 250, "Yamaha", "violin")


INSERT INTO studentInstrument(student_ID, instrumentType)
("S1", "guitar")
("S2", "guitar")
("S3", "piano")
("S4", "violin")
("S5", "flute")
("S6", "flute")
("S7", "piano")


INSERT INTO currentlyRentedInstruments(instrument_ID, student_ID, price)
("RI1", "S2", 230)
("RI2", "S1", 230)
("RI4", "S6", 500)


INSERT INTO instructorInstrument(instructor_ID. instrumentType)
("I1", "guitar")
("I2", "guitar")
("I2", "piano")
("I2", "flute")
("I2", "violin")
("I3", "guitar")
("I3", "piano")
("I3", "flute")
("I3", "violin")
("I4", "flute")
("I4", "piano")


INSERT INTO price(price_ID, lesson_ID, siblingDiscountFactor, price)
("Pr1", "L1",,300)
("Pr2", "L2",,500)
("Pr3", "L3",,500)
("Pr4", "L4",,300)
("Pr5", "L5",,600)
("Pr6", "L6",,500)
("Pr7", "L7",,300)
("Pr8", "L8",,600)
("Pr9", "L9",,300)
("Pr10", "L10",,500)

INSERT INTO attending_students(student_ID, lesson_ID)
("","L1")
(,"L2")
(,"L3")
(,"L4")
(,"L5")
(,"L6")
(,"L7")
(,"L8")
(,"L9")
(,"L10")



CREATE TABLE attending_students (
 student_ID INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 lesson_ID INT GENERATED ALWAYS AS IDENTITY NOT NULL
);