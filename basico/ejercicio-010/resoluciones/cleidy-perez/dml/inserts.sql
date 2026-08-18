-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;


INSERT INTO carreras (nombre_carrera, ciudad, distancia_km, precio_inscripcion, fecha_carrera) VALUES
('Maratón Nocturna CDMX', 'Ciudad de México', 42.2, 50.00, '2026-03-15'),
('10K San Silvestre Urbana', 'Madrid', 10.0, 25.00, '2025-12-31'),
('Media Maratón del Sol', 'Valencia', 21.1, 35.00, '2026-05-10'),
('5K Marea Verde', 'Bogotá', 5.0, 15.00, '2026-02-20');


INSERT INTO inscripciones (id_carrera, nombre_corredor, categoria, monto_pagado, estado_pago) VALUES
(1, 'Carlos Mendoza', 'Élite', 50.00, 'Pagado'),
(1, 'Ana Guerrero', 'Amateur', 50.00, 'Pagado'),
(1, 'Luis Torres', 'Master', 0.00, 'Pendiente'),
(2, 'Sofía Ramírez', 'Amateur', 25.00, 'Pagado'),
(2, 'David Mateo', 'Amateur', 25.00, 'Pagado'),
(2, 'Elena Rostova', 'Élite', 25.00, 'Pagado'),
(3, 'Javier Hernández', 'Master', 35.00, 'Pagado'),
(3, 'Mariana Gómez', 'Amateur', 0.00, 'Pendiente'),
(4, 'Pedro Pascal', 'Amateur', 15.00, 'Pagado');