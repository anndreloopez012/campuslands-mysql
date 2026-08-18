USE ejercicio_09_adv;

INSERT INTO gyms (gym_name, city) VALUES
('Iron Warriors', 'Bogota'),
('Dragon Fight Club', 'Medellin'),
('Elite Combat', 'Cali'),
('Power Strike', 'Barranquilla'),
('Champion Gym', 'Bucaramanga');

INSERT INTO fighters (fighter_name, weight_class, age, gym_id) VALUES
('Juan Perez', 'Lightweight', 24, 1),
('Carlos Gomez', 'Welterweight', 28, 2),
('Miguel Torres', 'Middleweight', 30, 3),
('David Ruiz', 'Featherweight', 22, 4),
('Kevin Diaz', 'Heavyweight', 31, 5),
('Andres Lopez', 'Lightweight', 26, 1);

INSERT INTO tournaments (tournament_name, event_date, location) VALUES
('National Open', '2026-05-10', 'Bogota'),
('Elite Cup', '2026-06-15', 'Medellin'),
('Summer Championship', '2026-07-20', 'Cali'),
('Golden Kick', '2026-08-18', 'Barranquilla'),
('Champion Series', '2026-09-25', 'Bucaramanga');

INSERT INTO fights (fighter_id, tournament_id, result, rounds) VALUES
(1, 1, 'Win', 3),
(2, 2, 'Loss', 3),
(3, 3, 'Win', 5),
(4, 4, 'Win', 3),
(5, 5, 'Loss', 5),
(6, 1, 'Win', 3);