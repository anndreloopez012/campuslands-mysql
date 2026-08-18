-- dml/inserts.sql
-- Inserción de datos de prueba para el torneo.

USE moba_tournament;

-- Insertar equipos
INSERT INTO equipos (nombre_equipo, region) VALUES
('Thunder Dragons', 'Norteamérica'),
('Shadow Wolves', 'Europa'),
('Crimson Phoenix', 'Asia'),
('Azure Serpents', 'Sudamérica');

-- Insertar partidas (IDs corresponden a los equipos: 1=Thunder, 2=Shadow, 3=Crimson, 4=Azure)
INSERT INTO partidas (equipo_rojo_id, equipo_azul_id, ganador_id, fecha_partida, duracion_minutos, fase_torneo) VALUES
(1, 2, 1, '2025-10-10 14:00:00', 35, 'Grupos'),
(3, 4, 3, '2025-10-10 15:00:00', 42, 'Grupos'),
(1, 3, 3, '2025-10-12 14:00:00', 38, 'Grupos'),
(2, 4, 2, '2025-10-12 15:00:00', 29, 'Grupos'),
(1, 4, 1, '2025-10-14 14:00:00', 45, 'Grupos'),
(2, 3, 3, '2025-10-14 15:00:00', 33, 'Grupos'),
(3, 1, 3, '2025-10-18 16:00:00', 55, 'Semifinal'),
(2, 4, 2, '2025-10-18 18:00:00', 48, 'Semifinal');