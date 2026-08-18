USE ejercicio_07_int;

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
('Andres Ruiz', 'Defender', 23, 4),
('David Lopez', 'Forward', 25, 5),
('Kevin Diaz', 'Midfielder', 22, 1);

INSERT INTO tournaments (tournament_name, season) VALUES
('National League', '2026'),
('Champions Cup', '2026'),
('Winter League', '2025'),
('Summer Cup', '2026'),
('Regional Tournament', '2025');

INSERT INTO team_tournaments (team_id, tournament_id, matches_played, points) VALUES
(1, 1, 10, 24),
(2, 1, 10, 21),
(3, 2, 8, 18),
(4, 4, 7, 15),
(5, 5, 9, 19),
(1, 2, 6, 14);