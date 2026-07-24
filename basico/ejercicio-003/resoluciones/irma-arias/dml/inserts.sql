
-- DML: Inserción de registros realistas para el inventario de skins
USE db_shooter_skins;

INSERT INTO inventario_skins (nombre_skin, arma_asociada, rareza, precio_mercado, desgaste, disponible_intercambio, fecha_obtencion) VALUES
('Dragon Lore', 'AWP', 'legendaria', 2500.00, 'factory_new', TRUE, '2026-01-10 12:00:00'),
('Red Line', 'AK-47', 'rara', 35.50, 'field_tested', TRUE, '2026-02-15 14:30:00'),
('Asiimov', 'M4A4', 'epica', 120.00, 'well_worn', FALSE, '2026-03-01 09:15:00'),
('Fade', 'Karambit', 'legendaria', 1800.75, 'factory_new', TRUE, '2026-01-20 18:45:00'),
('Hyper Beast', 'USP-S', 'epica', 45.00, 'minimal_wear', TRUE, '2026-03-10 16:20:00'),
('Safari Mesh', 'P250', 'comun', 1.25, 'battle_scarred', TRUE, '2026-04-02 11:10:00'),
('Neo Noir', 'AWP', 'epica', 85.90, 'field_tested', FALSE, '2026-02-28 20:00:00'),
('Case Hardened', 'AK-47', 'legendaria', 450.00, 'minimal_wear', TRUE, '2026-01-05 08:30:00');