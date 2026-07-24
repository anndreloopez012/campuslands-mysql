-- DML: Inserción de 8 registros útiles para probar agrupaciones con GROUP BY
USE db_skins_shooter_intermedio;

INSERT INTO skins_shooter (nombre_skin, arma, rareza, precio_monedas, estado_skin, fecha_adquisicion) VALUES
('Dragon Flame', 'AK-47', 'Mitica', 3500.00, 'equipado', '2026-05-10'),
('Cyber Neon', 'M4A1', 'Legendaria', 2200.00, 'disponible', '2026-05-12'),
('Abyss Shadow', 'AWP', 'Legendaria', 2800.00, 'en_venta', '2026-06-01'),
('Golden Strike', 'Desert Eagle', 'Epica', 1200.00, 'equipado', '2026-06-05'),
('Toxic Waste', 'P90', 'Rara', 450.00, 'archivado', '2026-06-10'),
('Arctic Frost', 'MP5', 'Epica', 950.00, 'disponible', '2026-06-15'),
('Blood Ruby', 'Knife', 'Mitica', 5000.00, 'equipado', '2026-06-18'),
('Rust Scrapper', 'Shotgun', 'Comun', 150.00, 'archivado', '2026-06-20');