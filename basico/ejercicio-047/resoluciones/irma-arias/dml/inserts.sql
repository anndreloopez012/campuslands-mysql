USE db_tienda_ropa;

-- Inserción de mínimo 8 registros variados de prendas de ropa
INSERT INTO prendas_tienda (nombre_prenda, categoria, talla, precio, stock, fecha_ingreso, estado) VALUES
('Camiseta Oversize Básica', 'Camisetas', 'L', 19.99, 45, '2026-03-01', 'disponible'),
('Jeans Slim Fit Clásicos', 'Pantalones', 'M', 45.50, 30, '2026-03-05', 'disponible'),
('Chaqueta de Cuero Eco', 'Chaquetas', 'L', 89.99, 12, '2026-03-10', 'en_oferta'),
('Zapatillas Urbanas Canvas', 'Calzado', 'M', 59.99, 25, '2026-03-15', 'disponible'),
('Sudadera con Capucha', 'Chaquetas', 'XL', 39.99, 0, '2026-04-01', 'agotado'),
('Gorra Deportiva Ajustable', 'Accesorios', 'Única', 15.00, 50, '2026-04-05', 'disponible'),
('Vestido Casual Verano', 'Vestidos', 'S', 34.99, 18, '2026-04-10', 'en_oferta'),
('Pantalón Jogger Deportivo', 'Pantalones', 'L', 29.99, 40, '2026-04-15', 'disponible');