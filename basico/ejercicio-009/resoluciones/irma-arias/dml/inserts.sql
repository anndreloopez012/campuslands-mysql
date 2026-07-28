USE db_kickboxing_irma;

-- Inserción de 8 registros de luchadores
INSERT INTO luchadores (nombre_completo, categoria_peso, peleas_ganadas, peleas_perdidas, estado) VALUES
('Carlos Mendoza', 'Wélter', 12, 2, 'Activo'),
('Sofía Vargas', 'Mosca', 9, 1, 'Activo'),
('Javier Gómez', 'Medio', 5, 6, 'Retirado'),
('Valentina Ruiz', 'Gallo', 14, 3, 'Activo'),
('Andrés Torres', 'Pesado', 4, 8, 'Suspendido'),
('Lucía Morales', 'Pluma', 7, 2, 'Activo'),
('Mateo Fernández', 'Wélter', 2, 5, 'Retirado'),
('Camila Rojas', 'Ligero', 10, 4, 'Activo');

-- Práctica de DELETE controlado (Eliminar registros bajo criterios específicos de negocio)
DELETE FROM luchadores 
WHERE estado = 'Retirado' AND peleas_ganadas < 6;

DELETE FROM luchadores 
WHERE estado = 'Suspendido';