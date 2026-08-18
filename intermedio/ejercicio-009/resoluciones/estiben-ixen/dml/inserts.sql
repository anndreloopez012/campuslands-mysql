USE kickboxing_db;



INSERT INTO trainers
(trainer_name,experience_years)
VALUES

('Carlos Mendoza',15),

('Marco Alvarez',10),

('Diego Fernandez',8),

('Luis Romero',12);



INSERT INTO weight_categories
(category_name,minimum_weight,maximum_weight)
VALUES

('Lightweight',60,70),

('Middleweight',70,85),

('Heavyweight',85,110);



INSERT INTO fighters
(id_trainer,id_category,fighter_name,nationality,victories)
VALUES

(1,1,'Alex Torres','Mexico',18),

(2,2,'Bruno Silva','Brazil',22),

(3,3,'Daniel Costa','Spain',25),

(4,1,'Kevin Morales','Argentina',15),

(1,2,'Victor Ramos','Chile',20),

(2,3,'Andres Vega','Colombia',17),

(3,1,'Marco Diaz','Peru',14),

(4,2,'Lucas Pereira','Portugal',19);



INSERT INTO fights
(fighter_one,fighter_two,fight_date,event_name)
VALUES

(1,2,'2026-09-01','World Kickboxing Night'),

(3,5,'2026-09-02','Championship Arena'),

(4,6,'2026-09-03','International Fight Cup'),

(7,8,'2026-09-04','Warriors League');



INSERT INTO fight_results
(id_fight,winner_id,fight_method)
VALUES

(1,2,'KO'),

(2,3,'Decision'),

(3,6,'Technical Knockout'),

(4,8,'Decision');