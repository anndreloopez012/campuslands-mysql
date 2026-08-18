USE  ejercicio_07_adv;

INSERT INTO teams (team_name, city) VALUES
('Tigers FC', 'Bogota'),
('Eagles United', 'Medellin'),
('Lions Club', 'Cali'),
('Sharks FC', 'Barranquilla'),
('Wolves FC', 'Bucaramanga');

INSERT INTO players (player_name, position, age, team_id) VALUES
('Juan Perez', 'Forward', 24, 1),
('Carlos Gomez', 'Midfielder', 27, 2),
('Miguel Torres', 'Goalkeeper', 30, 3),
('Andres Ruiz', 'Defender', 22, 4),
('David Lopez', 'Forward', 26, 5),
('Kevin Diaz', 'Midfielder', 21, 1);

INSERT INTO matches (home_team_id, away_team_id, home_score, away_score, match_date) VALUES
(1, 2, 3, 1, '2026-03-05'),
(3, 4, 2, 2, '2026-03-10'),
(5, 1, 0, 4, '2026-03-15'),
(2, 3, 1, 2, '2026-03-20'),
(4, 5, 3, 0, '2026-03-25'),
(1, 3, 2, 1, '2026-03-30');

INSERT INTO standings (team_id, matches_played, points, goals_scored) VALUES
(1, 10, 24, 22),
(2, 10, 18, 17),
(3, 10, 21, 20),
(4, 10, 15, 14),
(5, 10, 27, 25);