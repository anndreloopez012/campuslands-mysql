USE ejercicio_08_adv;

INSERT INTO teams (team_name, city) VALUES
('Falcons FS', 'Bogota'),
('Titans FS', 'Medellin'),
('Phoenix FS', 'Cali'),
('Storm FS', 'Barranquilla'),
('Warriors FS', 'Bucaramanga');

INSERT INTO players (player_name, position, age, team_id) VALUES
('Juan Perez', 'Pivot', 24, 1),
('Carlos Gomez', 'Goalkeeper', 28, 2),
('Miguel Torres', 'Winger', 23, 3),
('Andres Ruiz', 'Defender', 27, 4),
('David Lopez', 'Pivot', 26, 5),
('Kevin Diaz', 'Winger', 22, 1);

INSERT INTO matches (home_team_id, away_team_id, match_date, home_score, away_score) VALUES
(1, 2, '2026-04-05', 4, 2),
(3, 4, '2026-04-10', 3, 3),
(5, 1, '2026-04-15', 1, 5),
(2, 3, '2026-04-20', 2, 1),
(4, 5, '2026-04-25', 0, 2),
(1, 3, '2026-04-30', 3, 2);

INSERT INTO standings (team_id, matches_played, points, goal_difference) VALUES
(1, 10, 24, 12),
(2, 10, 18, 5),
(3, 10, 21, 9),
(4, 10, 15, -2),
(5, 10, 27, 15);