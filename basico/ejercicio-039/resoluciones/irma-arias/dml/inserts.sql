USE db_kickboxing;

-- Inserción de mínimo 8 registros variados de luchadores de kickboxing
INSERT INTO luchadores_kickboxing (nombre_luchador, categoria_peso, peleas_ganadas, peleas_perdidas, peso_kg, estado, fecha_inscripcion) VALUES
('Alexandre Silva', 'Wélter', 14, 2, 69.50, 'activo', '2025-01-10'),
('Marco Varela', 'Pesado', 10, 5, 95.00, 'activo', '2025-02-15'),
('Dmitri Petkov', 'Mediano', 8, 8, 77.20, 'inactivo', '2025-03-01'),
('Kenji Sato', 'Ligero', 12, 1, 62.40, 'activo', '2025-04-12'),
('Bruno Diaz', 'Mediano', 5, 9, 78.00, 'retirado', '2024-06-20'),
('Lucas Santana', 'Wélter', 9, 3, 70.00, 'activo', '2025-05-10'),
('Ivan Drago Jr', 'Pesado', 3, 6, 102.50, 'inactivo', '2025-06-01'),
('Liam O Connor', 'Ligero', 6, 4, 63.10, 'activo', '2025-06-15');

-- Práctica profesional de DELETE controlado (eliminación basada en criterios específicos de negocio)
-- Eliminar registros de luchadores que estén retirados y tengan más derrotas que victorias
DELETE FROM luchadores_kickboxing 
WHERE estado = 'retirado' AND peleas_perdidas > peleas_ganadas;

-- Eliminar registros de prueba o inactivos muy antiguos con bajo rendimiento
DELETE FROM luchadores_kickboxing 
WHERE estado = 'inactivo' AND peleas_ganadas < 5;