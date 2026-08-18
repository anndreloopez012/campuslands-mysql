-- dml/inserts.sql
--
-- Inserción de datos de ejemplo para el torneo.

USE torneo_moba;

-- Insertar equipos
INSERT INTO equipos (nombre_equipo, pais_origen) VALUES
('Cosmic Warriors', 'Corea del Sur'),
('Cyber Dragons', 'China'),
('Northern Bears', 'Canadá');

-- Insertar jugadores
INSERT INTO jugadores (nickname, nombre_completo, id_equipo, rol) VALUES
('Zephyr', 'Lee Sang-hyeok', 1, 'Mid'),
('Viper', 'Park Do-hyeon', 1, 'ADC'),
('Kael', 'Kim Tae-min', 1, 'Support'),
('Rift', 'Seo Jin-hyeok', 1, 'Jungle'),
('Titan', 'Choi Woo-je', 1, 'Top'),
('Dragon', 'Jian Zi-Hao', 2, 'ADC'),
('Shadow', 'Liu Shi-Yu', 2, 'Jungle'),
('Maple', 'Huang Yi-Tang', 3, 'Mid'),
('Frost', 'Terry Liu', 3, 'Top'),
('Nexus', 'Alex Chen', 2, 'Support');

-- Insertar estadísticas de partidas
INSERT INTO estadisticas_partida (id_jugador, asesinatos, muertes, asistencias) VALUES
(1, 10, 2, 8),   -- Zephyr
(2, 15, 4, 5),   -- Viper
(3, 2, 3, 20),   -- Kael
(6, 12, 5, 3),   -- Dragon
(7, 8, 6, 10),   -- Shadow
(8, 9, 3, 7),    -- Maple
(1, 8, 1, 12),   -- Zephyr (otra partida)
(2, 11, 5, 8),   -- Viper (otra partida)
(6, 14, 3, 6),   -- Dragon (otra partida)
(9, 5, 7, 9);    -- Frost
--aqui