USE futsal_league_db;



INSERT INTO cities
(city_name,country)
VALUES

('Madrid','Spain'),

('Barcelona','Spain'),

('Lisbon','Portugal'),

('Buenos Aires','Argentina');



INSERT INTO coaches
(coach_name,experience_years)
VALUES

('Carlos Martinez',12),

('Luis Fernandez',8),

('Marco Silva',15),

('Diego Perez',10);



INSERT INTO teams
(team_name,id_city,id_coach)
VALUES

('Madrid Futsal',1,1),

('Barcelona Sala',2,2),

('Lisboa Indoor',3,3),

('Buenos Aires Futsal',4,4);



INSERT INTO players
(id_team,player_name,position,age)
VALUES

(1,'Daniel Ramos','Pivot',25),

(1,'Miguel Torres','Cierre',27),

(2,'Alex Garcia','Ala',23),

(2,'Sergio Lopez','Portero',29),

(3,'Joao Silva','Pivot',26),

(3,'Pedro Costa','Ala',24),

(4,'Martin Diaz','Cierre',28),

(4,'Lucas Fernandez','Ala',22);



INSERT INTO matches
(home_team,away_team,match_date,home_score,away_score)
VALUES

(1,2,'2026-08-10',5,3),

(3,4,'2026-08-11',2,2),

(2,3,'2026-08-12',1,4);



INSERT INTO player_statistics
(id_player,id_match,goals,assists)
VALUES

(1,1,3,1),

(2,1,1,2),

(3,1,2,0),

(5,2,1,1),

(6,2,1,1),

(7,2,2,0),

(8,3,1,2),

(5,3,3,1);