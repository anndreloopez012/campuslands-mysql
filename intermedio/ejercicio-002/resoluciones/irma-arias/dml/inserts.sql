
-- DML: Inserción de registros (Mínimo 8 registros distribuidos para probar LEFT JOIN con casos límite)
USE db_battle_royale_intermedio;

-- Inserción de jugadores (Incluyendo un par de jugadores nuevos que NO tienen partidas registradas para probar el LEFT JOIN)
INSERT INTO jugadores_br (nombre_usuario, rango_actual, nivel_cuenta, estado_jugador) VALUES
('ShadowKiller', 'Gran Maestro', 85, 'activo'),
('ViperQueen', 'Diamante', 64, 'activo'),
('GhostSniper', 'Platino', 42, 'activo'),
('NeonStorm', 'Oro', 25, 'activo'),
('PhoenixZero', 'Bronce', 5, 'activo'), -- Caso límite: Sin estadísticas asociadas
('AlphaWolf', 'Master', 90, 'activo'),
('SilentStrike', 'Platino', 50, 'suspendido'),
('NoobMaster', 'Bronce', 3, 'activo'); -- Caso límite: Sin estadísticas asociadas

-- Inserción de estadísticas de partidas (6 registros vinculados a jugadores existentes)
INSERT INTO estadisticas_partidas (id_jugador, eliminaciones, daño_total, posicion_obtenida, fecha_partida) VALUES
(1, 12, 2450.50, 1, '2026-07-20'),
(2, 8, 1820.00, 3, '2026-07-20'),
(3, 5, 1100.25, 12, '2026-07-21'),
(4, 2, 450.00, 45, '2026-07-21'),
(6, 15, 3100.80, 2, '2026-07-22'),
(7, 4, 980.50, 18, '2026-07-22');