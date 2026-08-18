USE urban_races_backup_db;



INSERT INTO participants
(
runner_code,
full_name,
email,
country
)
VALUES

('RUN001','Carlos Perez','carlos@email.com','Guatemala'),

('RUN002','Ana Lopez','ana@email.com','Mexico'),

('RUN003','Daniel Garcia','daniel@email.com','Spain'),

('RUN004','Maria Torres','maria@email.com','Argentina'),

('RUN005','Luis Ramirez','luis@email.com','Chile'),

('RUN006','Sofia Morales','sofia@email.com','Colombia'),

('RUN007','Pedro Castillo','pedro@email.com','Peru'),

('RUN008','Laura Fernandez','laura@email.com','Brazil');



INSERT INTO races
(
race_code,
race_name,
city,
distance_km
)
VALUES

('R001','City Night Run','Guatemala City',10),

('R002','Urban Challenge','Mexico City',15),

('R003','Street Marathon','Barcelona',21.5);



INSERT INTO registrations
(
id_participant,
id_race,
registration_date
)
VALUES

(1,1,'2026-10-01'),

(2,1,'2026-10-01'),

(3,1,'2026-10-02'),

(4,2,'2026-10-03'),

(5,2,'2026-10-03'),

(6,3,'2026-10-04'),

(7,3,'2026-10-04'),

(8,3,'2026-10-05');



INSERT INTO race_results
(
id_registration,
final_position,
finish_time
)
VALUES

(1,1,'00:40:20'),

(2,3,'00:45:10'),

(3,2,'00:42:30'),

(4,5,'01:05:40'),

(5,4,'01:02:20'),

(6,1,'01:30:15'),

(7,2,'01:33:20'),

(8,3,'01:35:40');