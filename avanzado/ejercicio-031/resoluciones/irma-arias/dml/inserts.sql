-- DML: Inserción de datos para torneo esports MOBA
USE db_torneo_moba;

INSERT INTO equipos_moba (codigo_equipo, nombre_equipo, region_competitiva, victorias, derrotas, premio_acumulado, estado_equipo) VALUES
('MOBA-01', 'T1 Esports', 'LCK (Corea)', 18, 3, 250000.00, 'campeon'),
('MOBA-02', 'Gen.G Gaming', 'LCK (Corea)', 17, 4, 120000.50, 'en_competencia'),
('MOBA-03', 'G2 Esports', 'LEC (Europa)', 14, 7, 65000.00, 'en_competencia'),
('MOBA-04', 'Fnatic', 'LEC (Europa)', 10, 11, 35000.00, 'eliminado'),
('MOBA-05', 'Team Liquid', 'LCS (Norteamerica)', 12, 9, 45000.00, 'clasificado'),
('MOBA-06', 'Cloud9', 'LCS (Norteamerica)', 11, 10, 40000.00, 'eliminado'),
('MOBA-07', 'Bilibili Gaming', 'LPL (China)', 16, 5, 150000.00, 'en_competencia'),
('MOBA-08', 'JD Gaming', 'LPL (China)', 15, 6, 95000.00, 'clasificado');