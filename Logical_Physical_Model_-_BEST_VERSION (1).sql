CREATE TABLE enum (
 instrument VARCHAR(10),
 skillLevel CHAR(10)
);


CREATE TABLE instrumentTypes (
);


CREATE TABLE person (
 person_ID INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 firstName VARCHAR(50) NOT NULL,
 lastName VARCHAR(50) NOT NULL,
 phone VARCHAR(12),
 email VARCHAR(100),
 personalNumber CHAR(12) NOT NULL
);

ALTER TABLE person ADD CONSTRAINT PK_person PRIMARY KEY (person_ID);


CREATE TABLE rentedInstruments (
 instrument_ID INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 priceCurrent FLOAT(10) NOT NULL,
 brand VARCHAR(100) NOT NULL,
 rentedInstrumentType VARCHAR(100) NOT NULL
);

ALTER TABLE rentedInstruments ADD CONSTRAINT PK_rentedInstruments PRIMARY KEY (instrument_ID);


CREATE TABLE student (
 student_ID INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 sibling BOOLEAN,
 person_ID INT GENERATED ALWAYS AS IDENTITY NOT NULL
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (student_ID);


CREATE TABLE studentInstrument (
 student_ID INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instrumentType VARCHAR(50) NOT NULL
);

ALTER TABLE studentInstrument ADD CONSTRAINT PK_studentInstrument PRIMARY KEY (student_ID);


CREATE TABLE addressInformation (
 person_ID INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 city VARCHAR(50) NOT NULL,
 zip CHAR(5) NOT NULL,
 street VARCHAR(50) NOT NULL
);

ALTER TABLE addressInformation ADD CONSTRAINT PK_addressInformation PRIMARY KEY (person_ID);


CREATE TABLE contactPerson (
 person_ID INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 student_ID INT GENERATED ALWAYS AS IDENTITY NOT NULL
);

ALTER TABLE contactPerson ADD CONSTRAINT PK_contactPerson PRIMARY KEY (person_ID,student_ID);


CREATE TABLE currentlyRentedInstruments (
 instrument_ID INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 student_ID INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 price FLOAT(10) NOT NULL
);

ALTER TABLE currentlyRentedInstruments ADD CONSTRAINT PK_currentlyRentedInstruments PRIMARY KEY (instrument_ID,student_ID);


CREATE TABLE instructor (
 instructor_ID INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 ensemble BOOLEAN NOT NULL,
 person_ID INT GENERATED ALWAYS AS IDENTITY
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (instructor_ID);


CREATE TABLE instructorInstrument (
 instructor_ID INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instrumentType VARCHAR(50) NOT NULL
);

ALTER TABLE instructorInstrument ADD CONSTRAINT PK_instructorInstrument PRIMARY KEY (instructor_ID);


CREATE TABLE lesson (
 lesson_ID INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 skillLevel VARCHAR(12) NOT NULL,
 timeSlot TIMESTAMP(10) NOT NULL,
 instrument VARCHAR(50),
 maxStudents INT NOT NULL,
 minStudents INT NOT NULL,
 lessonType VARCHAR(50) NOT NULL,
 instructor_ID INT GENERATED ALWAYS AS IDENTITY
);

ALTER TABLE lesson ADD CONSTRAINT PK_lesson PRIMARY KEY (lesson_ID);


CREATE TABLE price (
 price_ID INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 lesson_ID INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 siblingDiscountFactor FLOAT(10),
 price FLOAT(10)
);

ALTER TABLE price ADD CONSTRAINT PK_price PRIMARY KEY (price_ID,lesson_ID);


CREATE TABLE sibling (
 student_ID INT GENERATED ALWAYS AS IDENTITY NOT NULL
);

ALTER TABLE sibling ADD CONSTRAINT PK_sibling PRIMARY KEY (student_ID);


CREATE TABLE attending_students (
 student_ID INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 lesson_ID INT GENERATED ALWAYS AS IDENTITY NOT NULL
);

ALTER TABLE attending_students ADD CONSTRAINT PK_attending_students PRIMARY KEY (student_ID,lesson_ID);


CREATE TABLE availabilitySlots (
 instructor_ID INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 availableSlots TIMESTAMP(10) NOT NULL
);

ALTER TABLE availabilitySlots ADD CONSTRAINT PK_availabilitySlots PRIMARY KEY (instructor_ID);


ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY (person_ID) REFERENCES person (person_ID);


ALTER TABLE studentInstrument ADD CONSTRAINT FK_studentInstrument_0 FOREIGN KEY (student_ID) REFERENCES student (student_ID);


ALTER TABLE addressInformation ADD CONSTRAINT FK_addressInformation_0 FOREIGN KEY (person_ID) REFERENCES person (person_ID);


ALTER TABLE contactPerson ADD CONSTRAINT FK_contactPerson_0 FOREIGN KEY (person_ID) REFERENCES person (person_ID);
ALTER TABLE contactPerson ADD CONSTRAINT FK_contactPerson_1 FOREIGN KEY (student_ID) REFERENCES student (student_ID);


ALTER TABLE currentlyRentedInstruments ADD CONSTRAINT FK_currentlyRentedInstruments_0 FOREIGN KEY (instrument_ID) REFERENCES rentedInstruments (instrument_ID);
ALTER TABLE currentlyRentedInstruments ADD CONSTRAINT FK_currentlyRentedInstruments_1 FOREIGN KEY (student_ID) REFERENCES student (student_ID);


ALTER TABLE instructor ADD CONSTRAINT FK_instructor_0 FOREIGN KEY (person_ID) REFERENCES person (person_ID);


ALTER TABLE instructorInstrument ADD CONSTRAINT FK_instructorInstrument_0 FOREIGN KEY (instructor_ID) REFERENCES instructor (instructor_ID);


ALTER TABLE lesson ADD CONSTRAINT FK_lesson_0 FOREIGN KEY (instructor_ID) REFERENCES instructor (instructor_ID);


ALTER TABLE price ADD CONSTRAINT FK_price_0 FOREIGN KEY (lesson_ID) REFERENCES lesson (lesson_ID);


ALTER TABLE sibling ADD CONSTRAINT FK_sibling_0 FOREIGN KEY (student_ID) REFERENCES student (student_ID);


ALTER TABLE attending_students ADD CONSTRAINT FK_attending_students_0 FOREIGN KEY (student_ID) REFERENCES student (student_ID);
ALTER TABLE attending_students ADD CONSTRAINT FK_attending_students_1 FOREIGN KEY (lesson_ID) REFERENCES lesson (lesson_ID);


ALTER TABLE availabilitySlots ADD CONSTRAINT FK_availabilitySlots_0 FOREIGN KEY (instructor_ID) REFERENCES instructor (instructor_ID);


