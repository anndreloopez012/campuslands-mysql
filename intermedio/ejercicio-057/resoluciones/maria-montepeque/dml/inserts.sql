-- Datos de practica: partidas de un videojuego de accion y aventura.
USE campuslands_mysql;

INSERT INTO partidas_heroe_intermedio (jugador, dificultad, nivel_alcanzado, enemigos_derrotados, muertes, duracion_min, fecha_partida) VALUES
('Bram', 'dificil', 5, 32, 2, 48, '2026-01-05'),
('Bram', 'dificil', 6, 27, 0, 52, '2026-01-15'),
('Isolde', 'normal', 4, 22, 5, 37, '2026-01-10'),
('Isolde', 'normal', 5, 24, 3, 42, '2026-02-01'),
('Corin', 'facil', 3, 16, 0, 27, '2026-01-20'),
('Bram', 'dificil', 7, 37, 1, 57, '2026-02-05'),
('Isolde', 'dificil', 6, 19, 6, 32, '2026-02-15'),
('Corin', 'normal', 5, 22, 0, 40, '2026-02-20'),
('Bram', 'dificil', 8, 42, 3, 62, '2026-03-01'),
('Corin', 'normal', 6, 27, 1, 44, '2026-03-05');
