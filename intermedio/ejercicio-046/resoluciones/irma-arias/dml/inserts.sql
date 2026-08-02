USE restaurante_urbano_db;

INSERT INTO categorias_menu (nombre_categoria, descripcion_categoria) VALUES
('Hamburguesas Artesanales', 'Carnes jugosas al carbón con panes brioche y salsas de la casa'),
('Tacos Urbanos', 'Tortillas de maíz con preparaciones callejeras auténticas'),
('Alitas Picantes', 'Piezas de pollo bañadas en salsas BBQ y habanero'),
('Bebidas y Sodas', 'Refrescos artesanales y malteadas temáticas');

INSERT INTO sucursales (nombre_sucursal, zona_ciudad) VALUES
('Food Park Central', 'Zona Norte'),
('District Street Food', 'Zona Rosa'),
('Plaza Urban Market', 'Zona Sur'),
('Container City', 'Zona Este');

INSERT INTO platillos (nombre_platillo, precio_usd, calificacion_cliente, id_categoria, id_sucursal, estado_platillo) VALUES
('Burger Doble Tocino BBQ', 12.50, 9.2, 1, 1, 'disponible'),
('Tacos al Pastor Callejeros', 8.50, 9.5, 2, 2, 'disponible'),
('Alitas Habanero Extreme', 10.00, 8.8, 3, 3, 'disponible'),
('Malteada de Oreo y Nutella', 6.00, 9.1, 4, 1, 'disponible'),
('Burger Vegana de Lentejas', 11.00, 8.3, 1, 4, 'temporada'),
('Tacos de Birria con Consomé', 10.50, 9.6, 2, 3, 'disponible'),
('Alitas BBQ Ahumadas', 9.50, 8.7, 3, 2, 'agotado'),
('Limonada Rosa de Frutos Rojos', 4.50, 8.9, 4, 4, 'disponible');
