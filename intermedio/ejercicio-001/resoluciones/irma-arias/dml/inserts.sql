-- DML: Inserción de registros realistas (Mínimo 8 registros distribuidos para pruebas)
USE db_esports_moba_intermedio;

-- Inserción de equipos
INSERT INTO equipos (nombre_equipo, region, puntos_ranking, estado_equipo) VALUES
('Fnatic', 'Europa', 1500, 'activo'),
('T1', 'Corea', 2400, 'activo'),
('Cloud9', 'Norteamérica', 1200, 'activo'),
('Team Liquid', 'Norteamérica', 1350, 'activo'),
('G2 Esports', 'Europa', 2100, 'activo');

-- Inserción de jugadores (8 registros en total para asegurar la robustez)
INSERT INTO jugadores (gamertag, nombre_real, rol, id_equipo) VALUES
('Caps', 'Rasmus Winther', 'Mid', 1),
('Bwipo', 'Gabriël Rau', 'Top', 1),
('Faker', 'Lee Sang-hyeok', 'Mid', 2),
('Gumayusi', 'Lee Min-hyeong', 'ADC', 2),
('Berserker', 'Kim Min-cheol', 'ADC', 3),
('CoreJJ', 'Jo Yong-in', 'Support', 4),
('Jojopyun', 'Joseph Pyun', 'Mid', 3),
('BrokenBlade', 'Sergen Çelik', 'Top', 5);