-- DML: Inserción de registros realistas orientados a pruebas de transacciones y estados
USE db_esports_moba;

INSERT INTO torneos_moba (nombre_equipo, region, puntos_liga, partidas_ganadas, partidas_perdidas, premio_acumulado, estado, fecha_inscripcion) VALUES
('Team Liquid', 'NA', 45, 15, 5, 25000.00, 'clasificado', '2026-01-10 10:00:00'),
('T1', 'KR', 54, 18, 2, 50000.00, 'campeon', '2026-01-12 11:30:00'),
('G2 Esports', 'EMEA', 39, 13, 7, 18000.00, 'en_competencia', '2026-01-15 14:15:00'),
('Fnatic', 'EMEA', 30, 10, 10, 10000.00, 'en_competencia', '2026-01-18 09:45:00'),
('Cloud9', 'NA', 24, 8, 12, 7500.00, 'eliminado', '2026-01-20 16:20:00'),
('DRX', 'KR', 42, 14, 6, 22000.00, 'clasificado', '2026-01-22 13:10:00'),
('PSG Talon', 'PCS', 27, 9, 11, 8500.00, 'eliminado', '2026-01-25 17:00:00'),
('Bilibili Gaming', 'LPL', 48, 16, 4, 30000.00, 'clasificado', '2026-01-28 08:30:00');