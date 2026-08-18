INSERT INTO proveedores_ropa (nombre_proveedor, codigo_fiscal, email_contacto, telefono) VALUES
('Textiles Urbanos S.A.', 'TU123456789', 'ventas@textilesurbanos.com', '+502 2222-1111'),
('Moda Global Ltda.', 'MG987654321', 'contacto@modaglobal.com', '+502 2222-3333'),
('Estilo Casual C.A.', 'EC456789123', 'pedidos@estilocasual.com', '+502 2222-5555');

INSERT INTO productos_ropa (proveedor_id, sku, nombre_producto, talla, color, precio_venta_usd, stock_disponible, es_activo, fecha_registro) VALUES
(1, 'CAM-NEG-M', 'Camiseta Básica Algodón', 'M', 'Negro', 15.50, 100, TRUE, '2026-01-15'),
(1, 'JEAN-AZU-32', 'Jeans Slim Fit', 'L', 'Azul', 45.00, 50, TRUE, '2026-02-01'),
(2, 'CHAQ-CUE-L', 'Chaqueta de Cuero Sintético', 'L', 'Negro', 85.99, 20, TRUE, '2026-02-10'),
(2, 'SUD-GRI-S', 'Sudadera con Capucha', 'S', 'Gris', 32.50, 35, TRUE, '2026-03-05'),
(3, 'VEST-ROJ-M', 'Vestido Casual Verano', 'M', 'Rojo', 39.99, 15, TRUE, '2026-04-12');

INSERT INTO ventas_ropa (fecha_hora_venta, metodo_pago, monto_total_usd) VALUES
('2026-08-18 10:15:00', 'Tarjeta', 60.50),
('2026-08-18 11:30:00', 'Efectivo', 85.99),
('2026-08-18 12:00:00', 'Transferencia', 72.49);

INSERT INTO detalles_venta_ropa (venta_id, producto_id, cantidad, precio_unitario_usd) VALUES
(1, 1, 1, 15.50),
(1, 2, 1, 45.00),
(2, 3, 1, 85.99),
(3, 4, 1, 32.50),
(3, 5, 1, 39.99);