INSERT INTO equipos (id_equipo, nombre_equipo, ciudad) VALUES
(1, 'Real Madrid', 'Madrid'),
(2, 'FC Barcelona', 'Barcelona'),
(3, 'Atlético de Madrid', 'Madrid');

INSERT INTO estadios (id_equipo, nombre_estadio, capacidad) VALUES
(1, 'Santiago Bernabéu', 81044),
(2, 'Spotify Camp Nou', 99354),
(3, 'Cívitas Metropolitano', 70460);

INSERT INTO rendimiento_temporada (id_equipo, anio_temporada, puntos, goles_a_favor, goles_en_contra) VALUES
(1, 2025, 85, 78, 25),
(1, 2026, 40, 35, 12),
(2, 2025, 82, 75, 28),
(2, 2026, 42, 38, 15),
(3, 2025, 70, 60, 30),
(3, 2026, 38, 29, 14);