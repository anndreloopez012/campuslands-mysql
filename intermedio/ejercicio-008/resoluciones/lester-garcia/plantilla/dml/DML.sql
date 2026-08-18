USE ejercicio_08_int;

INSERT INTO cities (city_name, country) VALUES
('Bogota', 'Colombia'),
('Medellin', 'Colombia'),
('Cali', 'Colombia'),
('Barranquilla', 'Colombia'),
('Bucaramanga', 'Colombia');

INSERT INTO teams (team_name, city_id) VALUES
('Falcons FS', 1),
('Titans FS', 2),
('Phoenix FS', 3),
('Storm FS', 4),
('Warriors FS', 5);

INSERT INTO players (player_name, position, age, team_id) VALUES
('Juan Perez', 'Pivot', 24, 1),
('Carlos Gomez', 'Goalkeeper', 29, 2),
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