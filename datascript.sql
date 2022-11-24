INSERT INTO person (person_ID,firstName,lastName,phone,email,personalNumber)
VALUES
  ('C63BC4CB-17B7-AC87-B913-33C4A9C91189','Aaron','Pollard','072-877-5614','neque.nullam@icloud.com','1984-34-29-5486'), -- student . sibling 1
  ('47AA8F7B-D751-2AD1-7270-C443DCF1E115','Ocean','Guzman','072-450-6131','massa.integer@protonmail.ca','1957-67-17-4664'), -- student . sibling 1
  ('BCA07B0A-7F1A-2E47-F72A-07B5A880E9D5','Victoria','Freeman','072-618-3888','dictum.phasellus@yahoo.net','1903-39-67-5738'), -- student . sibling 2
  ('E596BEDA-68AD-C941-8815-D97EEA38BDAD','Kameko','Ayers','072-151-9663','sem.molestie.sodales@hotmail.ca','1988-14-81-6785'), -- student . sibling 2
  ('4AA0A9BC-DDB9-9EE5-64C4-55FF6DDFD541','Aaron','Roberts','072-566-0057','rhoncus.nullam@protonmail.com','1991-54-70-3752'), -- student
  ('C9B71F4E-238B-1E52-8521-2DE0880F56F7','Ruth','Rivers','072-583-8183','quisque@aol.ca','1964-37-95-5272'), -- student
  ('1EEC97FD-3B7A-FA75-38DD-6C92B875A06C','Amelia','Parsons','072-866-3418','eu.neque.pellentesque@outlook.couk','1935-71-04-7524'), -- student
  ('1C338AA3-C202-F05A-CBF3-1249DC5E8727','Althea','Combs','072-038-7398','ultricies@icloud.couk','1951-36-53-0283'), -- student
  ('C53D4467-679D-C736-69AD-07DA7EBEA668','Ian','Grant','072-864-6674','montes@hotmail.net','1946-37-46-7690'), -- student
  ('3D5C6015-5E11-74B9-9B66-92EDD5CA88B5','Chandler','Peters','072-140-5322','donec.nibh@aol.edu','1956-19-25-8285'), -- student
  ('3A24DAB9-2061-FA46-3111-4A1E6767463F','Quemby','Meadows','072-704-3492','est.vitae.sodales@protonmail.net','1922-49-88-7735'), -- student
  ('64B69F1A-1AA2-1C47-A334-6D47DCB3B386','Mia','Acevedo','072-537-8282','phasellus.ornare@aol.org','1918-03-51-3835'), -- student
  ('35A7882C-DB53-6D2A-A753-1E43123B5F9B','Jasper','Serrano','072-012-5527','pretium.neque@yahoo.couk','1991-91-32-7448'), -- student
  ('5FD9AD7B-0241-9E52-31DB-0CAC2F37CE27','Jillian','Sims','072-335-1223','duis.gravida.praesent@hotmail.edu','1972-04-62-6766'), -- contact person
  ('2D248A73-1FAA-3A71-97A4-E34C11575361','Rhea','Charles','072-633-1782','ut@aol.ca','1944-57-62-8838'), -- contact person
  ('3CCB63CC-7939-756B-D7B4-38D27FF31153','Cullen','Maxwell','072-453-9278','phasellus.libero@protonmail.ca','1903-39-26-5467'), -- contact person
  ('17BF4593-E57B-E9D6-5434-24B5668B11D7','Hilary','Harvey','072-113-4693','quisque.imperdiet@outlook.com','1946-41-26-1174'), -- instructor
  ('DA7289AF-2F23-0AD2-5845-5FBA7540954E','Judah','Duffy','072-151-8709','vitae@google.ca','1942-76-49-3555'), -- instructor
  ('47A322F9-27BC-28B2-0B45-716DA676FA8F','Eric','Shelton','072-398-3616','id.risus.quis@yahoo.org','1952-42-58-8702'), -- instructor
  ('B21CD117-6565-E944-E8AE-A6544819B44D','Angela','Frank','072-664-4751','in.consectetuer@outlook.couk','1946-56-73-5619'); -- instructor

  INSERT INTO instructor (instructor_ID,ensemble,person_ID)
VALUES
  ('05B77A64-8E6D-2A9E-F9C8-78589B87167B','false','17BF4593-E57B-E9D6-5434-24B5668B11D7'),
  ('2B5B065A-BCAC-1B87-E327-E8ACB31E3F80','true','DA7289AF-2F23-0AD2-5845-5FBA7540954E'), -- ensemble = true
  ('A972297E-641B-B31D-D3A1-85DBD6C3FAE4','true','47A322F9-27BC-28B2-0B45-716DA676FA8F'), -- ensemble = true
  ('54D63739-C29E-9DE3-65A4-DE141E4D598C','false','B21CD117-6565-E944-E8AE-A6544819B44D'),

INSERT INTO addressInformation (person_ID,city,zip,street)
VALUES
  ('C63BC4CB-17B7-AC87-B913-33C4A9C91189','Borås','59056','Ap #484-4346 Pharetra. St.'), -- student
  ('47AA8F7B-D751-2AD1-7270-C443DCF1E115','Borås','26744','Ap #397-4678 Erat Street'), -- student
  ('BCA07B0A-7F1A-2E47-F72A-07B5A880E9D5','Alingsås','14925','Ap #659-8507 Arcu. Avenue'), -- student
  ('E596BEDA-68AD-C941-8815-D97EEA38BDAD','Linköping','84527','P.O. Box 373, 1731 Quam Road'), -- student
  ('4AA0A9BC-DDB9-9EE5-64C4-55FF6DDFD541','Lidingö','56975','P.O. Box 164, 333 Magna. St.'), -- student
  ('C9B71F4E-238B-1E52-8521-2DE0880F56F7','Hudiksvall','10600','908-3970 Leo. Ave'), -- student
  ('1EEC97FD-3B7A-FA75-38DD-6C92B875A06C','Stockholm','52534','Ap #544-4771 Diam. Street'), -- student
  ('1C338AA3-C202-F05A-CBF3-1249DC5E8727','Tranås','67339','568-5549 Nunc Rd.'), -- student
  ('C53D4467-679D-C736-69AD-07DA7EBEA668','Avesta','28506','Ap #904-7929 Proin Ave'), -- student
  ('3D5C6015-5E11-74B9-9B66-92EDD5CA88B5','Lidingo','02226','Ap #559-9906 Et Rd.'), -- student
  ('3A24DAB9-2061-FA46-3111-4A1E6767463F','Uddevalla','24527','552-9471 Nulla. Street'), -- student
  ('64B69F1A-1AA2-1C47-A334-6D47DCB3B386','Göteborg','57876','600-3073 Nunc Av.'), -- student
  ('35A7882C-DB53-6D2A-A753-1E43123B5F9B','Vänersborg','62672','793-6696 Phasellus Rd.'), -- student
  ('5FD9AD7B-0241-9E52-31DB-0CAC2F37CE27','Vetlanda','21700','P.O. Box 780, 7422 Purus, Ave'), -- contact person
  ('2D248A73-1FAA-3A71-97A4-E34C11575361','Motala','66475','Ap #761-7985 Donec Ave'), -- contact person
  ('3CCB63CC-7939-756B-D7B4-38D27FF31153','Märsta','91862','Ap #979-9642 In Road'), -- contact person
  ('17BF4593-E57B-E9D6-5434-24B5668B11D7','Lerum','62927','Ap #770-8956 Donec Avenue'), -- instructor
  ('DA7289AF-2F23-0AD2-5845-5FBA7540954E','Gävle','53012','693-9667 Aliquet Street'), -- instructor
  ('47A322F9-27BC-28B2-0B45-716DA676FA8F','Finspång','85814','Ap #489-3235 Ut St.'), -- instructor
  ('B21CD117-6565-E944-E8AE-A6544819B44D','Söderhamn','14514','P.O. Box 729, 575 Nec, St.'); -- instructor

INSERT INTO lesson (lesson_ID,skillLevel,timeSlot,instrument,maxStudents,minStudents,lessonType,instructor_ID)
VALUES
  ('E6893144-8CAF-A0DB-EE5B-6AE1A875586B','intermediate','1660869553000',NULL,7,4,'jazz','DA7289AF-2F23-0AD2-5845-5FBA7540954E'),
  ('83B0709E-83F1-4C46-36B8-701257B938B7','intermediate','1698391188000',NULL,2,1,'pop','47A322F9-27BC-28B2-0B45-716DA676FA8F'),
  ('7AC621BC-ADE7-2779-6D0A-9EDC47259D6A','beginner','1650916366000',NULL,6,4,'jazz','DA7289AF-2F23-0AD2-5845-5FBA7540954E'),
  ('19C58698-6185-54DC-0CA2-AA1BD7F86E2E','intermediate','1690082490000',NULL,4,3,'jazz','DA7289AF-2F23-0AD2-5845-5FBA7540954E'),
  ('5316D42D-BE7D-DB7B-C3DD-A420A5D59E91','beginner','1700238873000','piano',1,1,'single','B21CD117-6565-E944-E8AE-A6544819B44D'),
  ('EECEF16C-B9D2-B4CB-9D18-0B1075BF79ED','intermediate','1694182420000',NULL,5,3,'classical','47A322F9-27BC-28B2-0B45-716DA676FA8F'),
  ('6CC6CE07-D0E2-937A-8AA5-88B1A7AC9ABC','intermediate','1654975491000','flute',5,3,'group','17BF4593-E57B-E9D6-5434-24B5668B11D7'),
  ('92375908-3C99-1393-D0AA-FA35E4B83A93','beginner','1661378297000',NULL,8,4,'classical','47A322F9-27BC-28B2-0B45-716DA676FA8F'),
  ('58EB8C1F-617B-9175-45D4-775C1FDEEC6F','intermediate','1681984630000','flute',7,3,'group','17BF4593-E57B-E9D6-5434-24B5668B11D7'),
  ('BD634A85-12D6-83B0-B88A-4201A8D4B9A4','advanced','1639025014000',NULL,6,1,'rock','47A322F9-27BC-28B2-0B45-716DA676FA8F');

INSERT INTO student (student_ID,contactPerson,sibling,person_ID)
VALUES
  ('5C3F6046-B371-0032-EDA8-74175B46E4B1','5FD9AD7B-0241-9E52-31DB-0CAC2F37CE27','true','C63BC4CB-17B7-AC87-B913-33C4A9C91189'),
  ('2CF209EE-121E-6042-A85A-5D1E4ABABB69','5FD9AD7B-0241-9E52-31DB-0CAC2F37CE27','true','47AA8F7B-D751-2AD1-7270-C443DCF1E115'),
  ('263CA5EB-82EE-9783-E11D-7D6A29E37727','2D248A73-1FAA-3A71-97A4-E34C11575361','true','BCA07B0A-7F1A-2E47-F72A-07B5A880E9D5'),
  ('4ED81F16-5475-7505-4A21-4DF508B4FB40','2D248A73-1FAA-3A71-97A4-E34C11575361','true','E596BEDA-68AD-C941-8815-D97EEA38BDAD'),
  ('B4829448-8AA8-5D45-5746-293755C68D24','3CCB63CC-7939-756B-D7B4-38D27FF31153','false','4AA0A9BC-DDB9-9EE5-64C4-55FF6DDFD541'),
  ('1376B2B7-BC6C-3F1E-570B-4D81E3B13A9A',NULL,'false','C9B71F4E-238B-1E52-8521-2DE0880F56F7'),
  ('9BDC3A5C-AEF8-5F4C-C8D7-B510368CFB55',NULL,'false','1EEC97FD-3B7A-FA75-38DD-6C92B875A06C'),
  ('913C7273-A711-1A4E-3B1B-4AB08B4BE1B9',NULL,'false','1C338AA3-C202-F05A-CBF3-1249DC5E8727'),
  ('7D3CEE73-AC6A-3318-19B8-E239B49642BB',NULL,'false','C53D4467-679D-C736-69AD-07DA7EBEA668'),
  ('A934D54D-9819-D92C-1C44-E5BC597FB369',NULL,'false','3D5C6015-5E11-74B9-9B66-92EDD5CA88B5');
  ('2185C57A-6BE8-7447-5815-72D59B96BFCB',NULL,'false','3A24DAB9-2061-FA46-3111-4A1E6767463F'),
  ('E3DAD7A7-8BF5-3457-01AB-BD562B69D1E2',NULL,'false','64B69F1A-1AA2-1C47-A334-6D47DCB3B386'),
  ('805236D4-0C69-2DED-A951-8E168EC5FE7A',NULL,'false','35A7882C-DB53-6D2A-A753-1E43123B5F9B'),

  
  



  


