-- DML: Inserción de 8 registros útiles para pruebas del inventario de skins
USE db_skins_shooter_avanzado;

INSERT INTO inventario_skins (nombre_skin, arma_asociada, rareza, precio_monedas, nivel_desgaste, estado_inventario) VALUES
('Dragon Flame', 'AK-47', 'Mítica', 3500.00, 0.025, 'equipado'),
('Cyber Neon', 'M4A1', 'Legendaria', 2200.00, 0.150, 'disponible'),
('Abyss Shadow', 'AWP', 'Legendaria', 2800.00, 0.080, 'en_venta'),
('Golden Strike', 'Desert Eagle', 'Épica', 1200.00, 0.010, 'equipado'),
('Toxic Waste', 'P90', 'Rara', 450.00, 0.450, 'archivado'),
('Arctic Frost', 'MP5', 'Épica', 950.00, 0.120, 'disponible'),
('Blood Ruby', 'Knife', 'Mítica', 5000.00, 0.005, 'equipado'),
('Rust Scrapper', 'Shotgun', 'Común', 150.00, 0.850, 'archivado');