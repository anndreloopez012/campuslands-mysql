
-- dml/inserts.sql

USE shooter_skins_inventory;

INSERT INTO inventario_skins (nombre_skin, tipo_arma, rareza, precio, fecha_lanzamiento, obtenido) VALUES
('Dragon Lore', 'AWP', 'Legendaria', 4500.00, '2014-07-01', TRUE),
('Asiimov', 'AK-47', 'Épica', 75.50, '2013-12-18', TRUE),
('Redline', 'AWP', 'Rara', 15.00, '2014-02-20', FALSE),
('Fire Serpent', 'AK-47', 'Legendaria', 800.00, '2013-09-19', FALSE),
('Case Hardened', 'AK-47', 'Rara', 150.00, '2013-08-14', TRUE),
('Hyper Beast', 'M4A1-S', 'Épica', 45.00, '2015-04-15', TRUE),
('Safari Mesh', 'AWP', 'Común', 0.50, '2013-08-14', FALSE),
('Vulcan', 'AK-47', 'Épica', 90.00, '2014-05-01', FALSE);
