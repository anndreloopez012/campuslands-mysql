USE football_views_db;



INSERT INTO teams
(team_name,city,founded_year)
VALUES

('Real Madrid','Madrid',1902),

('Barcelona FC','Barcelona',1899),

('Manchester City','Manchester',1880),

('Bayern Munich','Munich',1900),

('Inter Milan','Milan',1908);



INSERT INTO players
(id_team,player_name,position)
VALUES

(1,'Vinicius Junior','Forward'),

(1,'Jude Bellingham','Midfielder'),

(2,'Lamine Yamal','Forward'),

(3,'Erling Haaland','Forward'),

(3,'Kevin De Bruyne','Midfielder'),

(4,'Harry Kane','Forward'),

(5,'Lautaro Martinez','Forward'),

(2,'Pedri','Midfielder');



INSERT INTO matches
(home_team,away_team,match_date,home_goals,away_goals)
VALUES

(1,2,'2026-09-01',3,2),

(3,4,'2026-09-02',2,1),

(5,1,'2026-09-03',1,1),

(2,3,'2026-09-04',0,2);



INSERT INTO player_statistics
(id_player,id_match,goals,assists)
VALUES

(1,1,2,0),

(2,1,1,1),

(3,1,1,1),

(4,2,2,0),

(5,2,0,2),

(6,2,1,0),

(7,3,1,0),

(1,3,0,1),

(4,4,2,1);