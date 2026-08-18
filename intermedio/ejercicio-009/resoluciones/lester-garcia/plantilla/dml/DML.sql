USE ejercicio_09_int;

INSERT INTO gyms (gym_name, city) VALUES
('Iron Warriors', 'Bogota'),
('Dragon Fight Club', 'Medellin'),
('Elite Combat', 'Cali'),
('Power Strike', 'Barranquilla'),
('Champion Gym', 'Bucaramanga');

INSERT INTO fighters (fighter_name, weight_class, age, gym_id) VALUES
('Juan Perez', 'Lightweight', 24, 1),
('Carlos Gomez', 'Welterweight', 27, 2),
('Miguel Torres', 'Middleweight', 30, 3),
('Andres Ruiz', 'Featherweight', 22, 4),
('David Lopez', 'Heavyweight', 31, 5),
('Kevin Diaz', 'Lightweight', 25, 1);

INSERT INTO tournaments (tournament_name, location, event_date) VALUES
('National Open', 'Bogota', '2026-05-10'),
('Elite Cup', 'Medellin', '2026-06-15'),
('Summer Championship', 'Cali', '2026-07-20'),
('Golden Kick', 'Barranquilla', '2026-08-18'),
('Champion Series', 'Bucaramanga', '2026-09-25');

INSERT INTO fights (fighter_id, tournament_id, opponent_name, result) VALUES
(1, 1, 'Luis Herrera', 'Win'),
(2, 2, 'Oscar Medina', 'Loss'),
(3, 3, 'Daniel Rojas', 'Win'),
(4, 4, 'Javier Castro', 'Win'),
(5, 5, 'Pedro Silva', 'Loss'),
(6, 1, 'Felipe Gomez', 'Win');