-- Datos de practica. Puedes cambiarlos o agregar mas filas.
-- dml/inserts.sql
-- Inserción de datos de prueba para el ranking.

USE br_ranking_intermediate;

-- Insertar jugadores
INSERT INTO jugadores (nickname, fecha_registro) VALUES
('ShadowStriker', '2025-01-15'),
('VortexViper', '2025-02-10'),
('NovaFury', '2025-03-05'),
('IronClad', '2025-04-20'),
('Rookie', '2025-05-01'), -- Jugador sin partidas
('Newbie', '2025-05-02'); -- Jugador sin partidas

-- Insertar partidas (IDs de jugador: 1=ShadowStriker, 2=VortexViper, 3=NovaFury, 4=IronClad)
INSERT INTO partidas (jugador_id, puntos_obtenidos, muertes, asistencias, fecha_partida) VALUES
(1, 150, 5, 2, '2025-05-10 14:00:00'),
(2, 200, 8, 1, '2025-05-10 14:30:00'),
(3, 120, 3, 5, '2025-05-11 15:00:00'),
(1, 180, 7, 0, '2025-05-11 15:30:00'),
(4, 90, 2, 3, '2025-05-12 16:00:00'),
(2, 250, 10, 2, '2025-05-12 16:30:00'),
(1, 130, 4, 4, '2025-05-13 17:00:00');
