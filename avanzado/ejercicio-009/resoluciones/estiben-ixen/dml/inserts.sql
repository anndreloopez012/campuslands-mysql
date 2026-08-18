USE kickboxing_locks_db;



INSERT INTO fighters
(
fighter_name,
nationality,
victories
)
VALUES

('Alex Torres','Mexico',15),

('Bruno Silva','Brazil',20),

('Carlos Mendoza','Spain',18),

('Daniel Costa','Argentina',22),

('Kevin Morales','Chile',12),

('Lucas Pereira','Portugal',17),

('Marco Diaz','Peru',14),

('Victor Ramos','Colombia',19);



INSERT INTO events
(
event_name,
event_date
)
VALUES

('World Kickboxing Championship','2026-11-01'),

('International Fight Night','2026-11-15');



INSERT INTO fights
(
id_event,
fighter_one,
fighter_two
)
VALUES

(1,1,2),

(1,3,4),

(2,5,6),

(2,7,8);