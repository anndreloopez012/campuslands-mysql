USE db_mercado_accesorios;

-- Inserción de mínimo 8 registros variados de accesorios con fechas de ingreso
INSERT INTO accesorios_mercado (codigo_sku, nombre_accesorio, categoria, precio_usd, stock, fecha_ingreso, estado) VALUES
('ACC-101', 'Reloj Smartwatch Deportivo Pro', 'Tecnología', 120.50, 25, '2026-01-15', 'disponible'),
('ACC-102', 'Pulsera de Plata con Zirconia', 'Joyería', 45.00, 40, '2026-02-10', 'en_oferta'),
('ACC-103', 'Gafas de Sol Polarizadas UV400', 'Moda', 35.99, 15, '2026-03-05', 'disponible'),
('ACC-104', 'Soporte Magnético para Celular Auto', 'Automotriz', 18.50, 0, '2025-11-20', 'agotado'),
('ACC-105', 'Anillo de Acero Inoxidable Minimalista', 'Joyería', 22.00, 50, '2026-04-12', 'disponible'),
('ACC-106', 'Audífonos Inalámbricos Bluetooth', 'Tecnología', 85.00, 30, '2026-05-01', 'en_oferta'),
('ACC-107', 'Correa de Cuero para Reloj Clásico', 'Relojería', 15.00, 60, '2025-10-10', 'descontinuado'),
('ACC-108', 'Mochila Antirrobo para Portátil', 'Moda', 55.00, 10, '2026-06-18', 'disponible');