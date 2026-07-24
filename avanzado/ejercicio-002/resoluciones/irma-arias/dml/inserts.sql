-- DML: Inserción de registros realistas para pruebas de procedimientos y consultas avanzadas
USE db_battle_royale_avanzado;

INSERT INTO ranking_pro (gamertag, rango_actual, puntos_liga, eliminaciones_totales, partidas_jugadas, estado) VALUES
('ShadowKing', 'Gran Maestro', 2850, 420, 150, 'activo'),
('ValkyriaX', 'Desafiante', 3400, 580, 180, 'leyenda'),
('GhostRider', 'Diamante', 1950, 230, 95, 'activo'),
('ApexHunter', 'Platino', 1450, 150, 80, 'activo'),
('CyberStorm', 'Oro', 980, 85, 60, 'activo'),
('ZoeSniper', 'Diamante', 2100, 290, 110, 'activo'),
('IronTitan', 'Bronce', 420, 30, 25, 'suspendido'),
('NeonBlade', 'Gran Maestro', 2700, 390, 140, 'leyenda');