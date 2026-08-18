-- dml/inserts.sql
-- Inserción de datos de prueba para la tabla de ranking.

USE battle_royale_ranking;

INSERT INTO ranking_jugadores (nombre_jugador, puntos_ranking, partidas_jugadas, victorias, kda_ratio, rango, ultima_partida) VALUES
('ShadowStriker', 4500, 210, 30, 3.50, 'Diamante', '2026-08-04 18:30:00'),
('VortexViper', 5200, 250, 45, 4.20, 'Maestro', '2026-08-04 19:00:00'),
('NovaFury', 3800, 180, 25, 2.80, 'Platino', '2026-08-03 22:15:00'),
('IronClad', 2500, 150, 15, 1.90, 'Oro', '2026-08-04 10:00:00'),
('GhostReaper', 4600, 220, 35, 3.90, 'Diamante', '2026-08-04 20:00:00'),
('LunaWraith', 3200, 190, 20, 2.50, 'Platino', '2026-08-02 15:45:00'),
('BlazeKnight', 1800, 120, 10, 1.50, 'Plata', '2026-08-04 11:30:00'),
('Zenith', 5800, 300, 60, 5.10, 'Maestro', '2026-08-04 21:00:00');