-- Insertar corredores (con UNIQUE en email y nombre+apellido)
INSERT INTO `ejercicio-010-int-corredores` 
(nombre, apellido, email, ciudad, categoria, carreras, puntos, premios) VALUES 
('Carlos', 'Pérez', 'carlos@email.com', 'Madrid', 'elite', 12, 850, 5000.00),
('María', 'López', 'maria@email.com', 'Barcelona', 'elite', 10, 780, 4500.00),
('Juan', 'Rivas', 'juan@email.com', 'Valencia', 'elite', 8, 620, 3200.00),
('Ana', 'Torres', 'ana@email.com', 'Madrid', 'amateur', 6, 450, 1500.00),
('Luis', 'Soto', 'luis@email.com', 'Barcelona', 'amateur', 5, 380, 1200.00),
('Sofía', 'Cruz', 'sofia@email.com', 'Valencia', 'amateur', 4, 290, 800.00),
('David', 'Ruiz', 'david@email.com', 'Madrid', 'novato', 3, 180, 500.00),
('Elena', 'Gil', 'elena@email.com', 'Barcelona', 'novato', 2, 120, 300.00);

-- Insertar carreras (con UNIQUE en nombre+fecha)
INSERT INTO `ejercicio-010-int_carreras` 
(nombre_carrera, ciudad, fecha, distancia) VALUES 
('Maratón Madrid', 'Madrid', '2025-01-15', 42),
('10K Barcelona', 'Barcelona', '2025-02-20', 10),
('Media Maratón Valencia', 'Valencia', '2025-03-10', 21),
('Maratón Madrid', 'Madrid', '2025-04-05', 42);
