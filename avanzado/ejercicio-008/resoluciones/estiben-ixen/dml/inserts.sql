USE futsal_security_db;



INSERT INTO teams
(team_name,city)
VALUES

('Guatemala Futsal','Guatemala City'),

('Barcelona Sala','Barcelona'),

('Lisboa Indoor','Lisboa'),

('Buenos Aires Futsal','Buenos Aires');



INSERT INTO players
(id_team,player_name,position,age)
VALUES

(1,'Carlos Ramirez','Pivot',25),

(1,'Luis Morales','Cierre',27),

(2,'Daniel Torres','Ala',23),

(2,'Miguel Sanchez','Portero',29),

(3,'Joao Silva','Pivot',26),

(3,'Pedro Costa','Ala',24),

(4,'Martin Diaz','Cierre',28),

(4,'Lucas Perez','Ala',22);



INSERT INTO matches
(home_team,away_team,match_date,home_score,away_score)
VALUES

(1,2,'2026-10-01',5,3),

(3,4,'2026-10-02',2,2),

(2,3,'2026-10-03',1,4);



INSERT INTO statistics
(id_player,goals,assists)
VALUES

(1,5,2),

(2,2,3),

(3,4,1),

(4,0,1),

(5,3,2),

(6,2,1),

(7,1,3),

(8,2,2);