-- Datos de practica. Puedes cambiarlos o agregar mas filas.
-- Archivo: dml/inserts.sql
-- Descripción: Inserción de datos de ejemplo para el sistema de ranking de Battle Royale.

USE ranking_br;

-- Inserción de jugadores
INSERT INTO jugadores (nickname, region, estado) VALUES
('ShadowHunter', 'Norteamérica', 'Activo'),
('MysticBlade', 'Europa', 'Activo'),
('DragonSlayer', 'Asia', 'Activo'),
('NightCrawler', 'Norteamérica', 'Inactivo'),
('PhoenixRising', 'Europa', 'Activo'),
('GhostSniper', 'Sudamérica', 'Activo'),
('IronFist', 'Asia', 'Activo'),
('Valkyrie', 'Norteamérica', 'Activo'),
('DarkKnight', 'Europa', 'Baneado'),
('StormBreaker', 'Sudamérica', 'Activo');

-- Inserción de partidas
INSERT INTO partidas (mapa, duracion_minutos) VALUES
('Erangel', 30.50),
('Miramar', 35.25),
('Sanhok', 22.10),
('Vikendi', 28.00),
('Erangel', 31.00),
('Miramar', 36.15),
('Sanhok', 20.00),
('Vikendi', 29.50),
('Erangel', 32.00),
('Miramar', 34.00);

-- Inserción de estadísticas de partida
-- Partida 1 (Erangel)
INSERT INTO estadisticas_partida (id_jugador, id_partida, kills, deaths, asistencias, dano_infligido, dano_recibido, posicion_final, puntaje_partida) VALUES
(1, 1, 7, 1, 3, 1200, 450, 1, 150.75), -- ShadowHunter
(2, 1, 3, 2, 1, 800, 600, 5, 80.20),  -- MysticBlade
(3, 1, 0, 1, 0, 150, 300, 15, 10.00), -- DragonSlayer
(4, 1, 5, 0, 2, 1000, 300, 2, 130.50); -- NightCrawler

-- Partida 2 (Miramar)
INSERT INTO estadisticas_partida (id_jugador, id_partida, kills, deaths, asistencias, dano_infligido, dano_recibido, posicion_final, puntaje_partida) VALUES
(1, 2, 2, 1, 0, 500, 400, 10, 45.00),
(5, 2, 8, 0, 4, 1500, 200, 1, 180.90), -- PhoenixRising
(6, 2, 4, 1, 1, 900, 500, 3, 110.30); -- GhostSniper

-- Partida 3 (Sanhok)
INSERT INTO estadisticas_partida (id_jugador, id_partida, kills, deaths, asistencias, dano_infligido, dano_recibido, posicion_final, puntaje_partida) VALUES
(7, 3, 6, 0, 2, 1100, 350, 1, 140.60), -- IronFist
(8, 3, 1, 1, 0, 300, 250, 8, 30.00),  -- Valkyrie
(1, 3, 3, 1, 1, 700, 400, 4, 75.00);

-- Partida 4 (Vikendi)
INSERT INTO estadisticas_partida (id_jugador, id_partida, kills, deaths, asistencias, dano_infligido, dano_recibido, posicion_final, puntaje_partida) VALUES
(2, 4, 9, 0, 5, 1800, 150, 1, 200.00),
(5, 4, 2, 1, 1, 600, 300, 7, 60.00),
(7, 4, 4, 1, 0, 850, 400, 5, 95.00);

-- Partida 5 (Erangel)
INSERT INTO estadisticas_partida (id_jugador, id_partida, kills, deaths, asistencias, dano_infligido, dano_recibido, posicion_final, puntaje_partida) VALUES
(1, 5, 10, 0, 5, 2000, 100, 1, 250.00),
(6, 5, 3, 2, 1, 750, 600, 6, 70.00),
(8, 5, 0, 1, 0, 200, 300, 12, 15.00);

-- Partida 6 (Miramar)
INSERT INTO estadisticas_partida (id_jugador, id_partida, kills, deaths, asistencias, dano_infligido, dano_recibido, posicion_final, puntaje_partida) VALUES
(10, 6, 7, 1, 3, 1300, 400, 1, 160.00), -- StormBreaker
(2, 6, 4, 1, 2, 950, 550, 4, 90.00);

-- Partida 7 (Sanhok)
INSERT INTO estadisticas_partida (id_jugador, id_partida, kills, deaths, asistencias, dano_infligido, dano_recibido, posicion_final, puntaje_partida) VALUES
(3, 7, 5, 1, 2, 1000, 400, 2, 115.00),
(5, 7, 6, 0, 3, 1200, 300, 1, 145.00);

-- Partida 8 (Vikendi)
INSERT INTO estadisticas_partida (id_jugador, id_partida, kills, deaths, asistencias, dano_infligido, dano_recibido, posicion_final, puntaje_partida) VALUES
(1, 8, 4, 1, 2, 800, 450, 3, 85.00),
(7, 8, 8, 0, 4, 1600, 250, 1, 190.00);
