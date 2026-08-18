INSERT INTO eventos_carrera (id_evento, nombre_evento, distancia_km, costo_inscripcion) VALUES
(1, 'Maratón Nocturna Ciudad', 21.1, 45.00),
(2, 'Carrera 10K Primavera', 10.0, 30.00),
(3, 'Sprint 5K Urbano', 5.0, 20.00);

INSERT INTO corredores (id_corredor, nombre, categoria_edad, genero) VALUES
(1, 'Carlos Santana', 'Master A', 'Masculino'),
(2, 'Lucía Méndez', 'Libre', 'Femenino'),
(3, 'Mateo Fernández', 'Juvenil', 'Masculino'),
(4, 'Sofía Gómez', 'Master B', 'Femenino'),
(5, 'Diego Torres', 'Libre', 'Masculino');

INSERT INTO inscripciones (id_corredor, id_evento, monto_pagado) VALUES
(1, 1, 45.00),
(2, 1, 45.00),
(3, 2, 30.00),
(4, 2, 30.00),
(5, 3, 20.00),
(1, 3, 20.00);