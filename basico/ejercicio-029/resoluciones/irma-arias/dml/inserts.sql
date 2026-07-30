USE db_mercado_accesorios;

-- Inserción de mínimo 8 registros variados para pruebas con fechas
INSERT INTO accesorios (nombre_accesorio, categoria, precio, stock, fecha_ingreso, estado) VALUES
('Audífonos Inalámbricos Pro', 'Audio', 89.99, 45, '2026-05-10', 'disponible'),
('Cable USB-C de Carga Rápida', 'Carga', 15.50, 120, '2026-01-15', 'disponible'),
('Estuche Antigolpes para Tablet', 'Proteccion', 25.00, 30, '2026-06-01', 'disponible'),
('Soporte Ajustable para Laptop', 'Video', 45.00, 0, '2025-11-20', 'agotado'),
('Power Bank 20000mAh', 'Carga', 55.00, 15, '2026-04-05', 'disponible'),
('Teclado Mecánico RGB', 'Audio', 75.25, 8, '2026-02-18', 'disponible'),
('Protector de Pantalla Vidrio Templado', 'Proteccion', 10.00, 200, '2026-07-01', 'disponible'),
('Hub USB Multiport 7 en 1', 'Carga', 35.00, 50, '2025-12-10', 'descontinuado');