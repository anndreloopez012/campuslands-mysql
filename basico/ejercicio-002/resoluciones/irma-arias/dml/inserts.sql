-- DML: Inserción de datos realistas para pruebas
USE db_battle_royale;

INSERT INTO jugadores_ranking (gamertag, nivel, puntaje_total, partidas_jugadas, victorias, kda, estado, fecha_registro) VALUES
('ShadowSniper', 45, 12540.50, 320, 45, 3.45, 'activo', '2026-01-15 14:30:00'),
('ValkyrieQueen', 60, 18920.75, 450, 85, 4.12, 'activo', '2026-02-10 09:15:00'),
('PixelGhost', 12, 3400.00, 95, 8, 1.20, 'activo', '2026-03-05 18:45:00'),
('IronFist', 38, 9800.25, 280, 30, 2.50, 'suspendido', '2026-01-20 22:10:00'),
('CyberNinja', 52, 15600.80, 390, 62, 3.80, 'activo', '2026-02-28 16:00:00'),
('NoobMaster99', 5, 1150.00, 40, 2, 0.75, 'inactivo', '2026-04-01 11:00:00'),
('StormBringer', 48, 14200.00, 350, 50, 3.10, 'activo', '2026-03-12 20:30:00'),
('ApexPredator', 75, 24500.90, 600, 120, 4.95, 'activo', '2026-01-05 08:00:00');