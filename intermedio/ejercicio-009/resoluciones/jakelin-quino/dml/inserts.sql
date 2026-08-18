-- Insertar categorías
INSERT INTO `ejercicio-009-int-categorias` VALUES 
(1, 'peso pluma', 52.00, 57.00),
(2, 'peso ligero', 58.00, 65.00),
(3, 'peso medio', 66.00, 75.00),
(4, 'peso pesado', 76.00, 120.00);

-- Insertar gimnasios
INSERT INTO `ejercicio-009-int-gimnasios` VALUES 
(1, 'Fury Gym', 'Madrid', 'Carlos Gómez'),
(2, 'Wolves Academy', 'Barcelona', 'Ana Martínez'),
(3, 'Knights Dojo', 'Valencia', 'Luis Pérez');

-- Insertar luchadores
INSERT INTO `ejercicio-009-int-luchadores` 
(nombre, categoria_id, gimnasio_id, peso, victorias, derrotas, nocauts, activo) VALUES 
('Carlos Pérez', 4, 1, 105.50, 12, 2, 8, 1),
('María López', 3, 1, 72.00, 15, 1, 10, 1),
('Juan Rivas', 2, 2, 65.00, 8, 5, 4, 1),
('Ana Torres', 1, 2, 57.00, 20, 3, 15, 1),
('Luis Soto', 4, 3, 110.00, 3, 8, 1, 0),
('Sofía Cruz', 3, 3, 70.50, 10, 4, 6, 1),
('David Ruiz', 2, 1, 67.00, 5, 6, 2, 0),
('Elena Gil', 1, 2, 55.00, 18, 2, 12, 1);