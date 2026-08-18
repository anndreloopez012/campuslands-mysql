USE urban_races_db;



INSERT INTO participants
(
runner_code,
full_name,
email,
birth_date,
country
)
VALUES

('RUN001','Carlos Perez','carlos@mail.com','1995-03-10','Guatemala'),

('RUN002','Ana Lopez','ana@mail.com','1998-07-15','Mexico'),

('RUN003','Daniel Garcia','daniel@mail.com','1992-05-21','Spain'),

('RUN004','Maria Torres','maria@mail.com','1997-11-09','Argentina'),

('RUN005','Luis Ramirez','luis@mail.com','1994-02-18','Chile'),

('RUN006','Sofia Morales','sofia@mail.com','2000-01-30','Colombia'),

('RUN007','Pedro Castillo','pedro@mail.com','1996-09-12','Peru'),

('RUN008','Laura Fernandez','laura@mail.com','1999-06-25','Brazil');



INSERT INTO races
(
race_code,
race_name,
city,
race_date,
distance_km
)
VALUES

('RACE001','City Night Run','Guatemala City','2026-10-01',10),

('RACE002','Urban Challenge','Mexico City','2026-10-05',15),

('RACE003','Street Marathon','Barcelona','2026-10-10',21.5);



INSERT INTO registrations
(
registration_code,
id_participant,
id_race,
registration_date
)
VALUES

('INS001',1,1,'2026-09-01'),

('INS002',2,1,'2026-09-02'),

('INS002X',3,1,'2026-09-03'),

('INS003',4,2,'2026-09-05'),

('INS004',5,2,'2026-09-06'),

('INS005',6,3,'2026-09-07'),

('INS006',7,3,'2026-09-08'),

('INS007',8,3,'2026-09-09');



INSERT INTO results
(
id_registration,
final_position,
finish_time
)
VALUES

(1,1,'00:42:15'),

(2,3,'00:45:30'),

(3,2,'00:44:10'),

(4,5,'01:10:20'),

(5,4,'01:05:15'),

(6,1,'01:35:20'),

(7,2,'01:38:45'),

(8,3,'01:40:10');