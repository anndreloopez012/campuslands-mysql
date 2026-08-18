USE football_league_db;



INSERT INTO teams
(team_name, city, founded_year)
VALUES

('Real Madrid','Madrid',1902),

('Barcelona FC','Barcelona',1899),

('Manchester City','Manchester',1880),

('Bayern Munich','Munich',1900),

('Inter Milan','Milan',1908),

('PSG','Paris',1970);



INSERT INTO players
(id_team, player_name, position, shirt_number, birth_date)
VALUES

(1,'Jude Bellingham','Midfielder',5,'2003-06-29'),

(1,'Vinicius Junior','Forward',7,'2000-07-12'),

(2,'Lamine Yamal','Forward',27,'2007-07-13'),

(3,'Erling Haaland','Forward',9,'2000-07-21'),

(4,'Harry Kane','Forward',9,'1993-07-28'),

(5,'Lautaro Martinez','Forward',10,'1997-08-22'),

(6,'Ousmane Dembele','Forward',10,'1997-05-15'),

(3,'Kevin De Bruyne','Midfielder',17,'1991-06-28');



INSERT INTO matches
(home_team, away_team, match_date, home_goals, away_goals)
VALUES

(1,2,'2026-08-01',3,2),

(3,4,'2026-08-02',2,2),

(5,6,'2026-08-03',1,0),

(2,3,'2026-08-04',1,3);



INSERT INTO player_statistics
(id_player,id_match,goals,assists)
VALUES

(1,1,1,1),

(2,1,2,0),

(3,1,1,0),

(4,2,2,0),

(5,2,1,1),

(6,3,1,0),

(8,4,1,2),

(4,4,2,1);