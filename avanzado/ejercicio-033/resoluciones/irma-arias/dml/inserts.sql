-- DML: Inserción de datos para inventario de skins shooter
USE db_inventario_skins;

INSERT INTO skins_shooter (codigo_skin, nombre_skin, arma_asociada, rareza_skin, precio_valor, stock_disponible, estado_inventario) VALUES
('SKIN-01', 'AK-47 Asiimov', 'AK-47', 'epica', 150.50, 5, 'en_venta'),
('SKIN-02', 'AWP Dragon Lore', 'AWP', 'mitica', 2500.00, 1, 'equipado'),
('SKIN-03', 'M4A4 Howl', 'M4A4', 'legendaria', 1200.75, 2, 'disponible'),
('SKIN-04', 'Desert Eagle Printstream', 'Desert Eagle', 'epica', 85.00, 10, 'disponible'),
('SKIN-05', 'Glock-18 Water Elemental', 'Glock-18', 'rara', 25.50, 15, 'archivado'),
('SKIN-06', 'USP-S Kill Confirmed', 'USP-S', 'epica', 95.20, 8, 'en_venta'),
('SKIN-07', 'Knife Karambit Doppler', 'Cuchillo', 'legendaria', 950.00, 3, 'equipado'),
('SKIN-08', 'P250 Sand Dune', 'P250', 'comun', 0.50, 50, 'disponible');