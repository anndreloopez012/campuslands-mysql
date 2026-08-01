-- DML: Inserción de datos para ranking battle royale
USE db_ranking_battleroyale;

INSERT INTO jugadores_battle_royale (codigo_jugador, gamertag, nivel_experiencia, puntos_ranking, partidas_jugadas, fecha_registro, estado_jugador) VALUES
('BR-01', 'ShadowSniper99', 85, 4550.75, 320, '2025-10-10', 'leyenda'),
('BR-02', 'ValkyrieQueen', 72, 3890.50, 275, '2025-11-15', 'activo'),
('BR-03', 'GhostRider_X', 65, 3100.25, 210, '2025-12-01', 'activo'),
('BR-04', 'ApexPredator', 90, 5200.00, 410, '2025-09-20', 'leyenda'),
('BR-05', 'CyberNinja', 50, 2150.80, 150, '2026-01-10', 'activo'),
('BR-06', 'ToxicPlayer_99', 30, 850.00, 95, '2026-02-05', 'suspendido'),
('BR-07', 'StormBringer', 60, 2950.40, 190, '2026-02-20', 'activo'),
('BR-08', 'NoobMaster_69', 15, 320.10, 45, '2026-03-01', 'inactivo');