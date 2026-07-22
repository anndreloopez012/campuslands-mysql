
-- DML: Inserción de registros realistas
-- Autor: Irma Yaneht Arias García

USE db_moba_torneo;

INSERT INTO jugadores_moba (nombre_jugador, nickname, rol, equipo, puntaje_kda, partidas_jugadas, estado, fecha_inscripcion) VALUES
('Carlos Mendoza', 'ShadowPhoenix', 'Assassin', 'Team Void', 4.85, 24, 'activo', '2026-06-01'),
('Ana Sofía Ruiz', 'ValkyrieX', 'Support', 'Celestial Gaming', 3.90, 30, 'activo', '2026-06-02'),
('Mateo Gomez', 'IronWall', 'Tank', 'Titan Esports', 2.75, 28, 'activo', '2026-06-03'),
('Lucía Fernandez', 'CyberQueen', 'Mage', 'Team Void', 5.10, 26, 'activo', '2026-06-04'),
('David Ospina', 'SniperGod', 'Marksman', 'Apex Predators', 4.50, 22, 'activo', '2026-06-05'),
('Valeria Torres', 'MysticHeal', 'Support', 'Apex Predators', 4.15, 25, 'suspendido', '2026-06-06'),
('Esteban Morales', 'BladeMaster', 'Assassin', 'Titan Esports', 3.60, 19, 'activo', '2026-06-07'),
('Sofía Castiblanco', 'StellarMage', 'Mage', 'Celestial Gaming', 4.95, 29, 'activo', '2026-06-08'),
('Andrés Parra', 'ShieldMaster', 'Tank', 'Team Void', 2.90, 21, 'eliminado', '2026-06-09');