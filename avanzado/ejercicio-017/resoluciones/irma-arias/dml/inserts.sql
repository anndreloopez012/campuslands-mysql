-- DML: Inserción de datos para la tienda de ropa
USE db_tienda_ropa;

INSERT INTO inventario_ropa (codigo_prenda, nombre_articulo, categoria, talla, precio_unitario, stock_disponible, fecha_ingreso, estado) VALUES
('CLO-01', 'Chaqueta de Cuero Oversize', 'Abrigos', 'L', 89.99, 15, '2026-01-10', 'en_stock'),
('CLO-02', 'Jeans Slim Fit Clásicos', 'Pantalones', 'M', 45.50, 40, '2026-02-15', 'en_stock'),
('CLO-03', 'Camiseta Básica de Algodón', 'Camisetas', 'S', 15.99, 85, '2026-03-01', 'en_stock'),
('CLO-04', 'Sudadera con Capucha Estampada', 'Hoodies', 'XL', 55.00, 8, '2026-03-20', 'ultimas_unidades'),
('CLO-05', 'Vestido Midi Floral Verano', 'Vestidos', 'S', 49.99, 0, '2026-01-25', 'agotado'),
('CLO-06', 'Pantalón Cargo Urbano', 'Pantalones', 'L', 52.00, 25, '2026-04-05', 'en_stock'),
('CLO-07', 'Blazer Formal Ejecutivo', 'Blazers', 'M', 75.00, 12, '2026-02-10', 'en_stock'),
('CLO-08', 'Short de Denim playero', 'Shorts', 'XS', 22.50, 5, '2026-04-12', 'ultimas_unidades');