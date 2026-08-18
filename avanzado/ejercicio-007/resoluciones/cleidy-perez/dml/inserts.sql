-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO Equipos (nombre, ciudad) VALUES
('Real Madrid', 'Madrid'),
('FC Barcelona', 'Barcelona'),
('Atlético de Madrid', 'Madrid'),
('Sevilla FC', 'Sevilla');

INSERT INTO Partidos (equipo_local_id, equipo_visitante_id, goles_local, goles_visitante, fecha_partido) VALUES
(1, 2, 2, 1, '2026-02-15 21:00:00'),
(3, 4, 1, 1, '2026-02-16 18:30:00'),
(2, 3, 3, 0, '2026-02-22 20:00:00'),
(4, 1, 0, 2, '2026-02-23 16:15:00');