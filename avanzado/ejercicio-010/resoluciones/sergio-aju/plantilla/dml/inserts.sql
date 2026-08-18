-- Carga de datos para el módulo de carreras urbanas.
USE campuslands_mysql;

INSERT INTO ejercicio_010_carreras_urbanas (corredor, distancia_km, tiempo_minutos, categoria_edad, costo_inscripcion_usd, estado_participacion, fecha_carrera) VALUES
('Carlos Pérez', 10.00, 42.50, 'Master A', 25.00, 'finalizado', '2026-05-15'),
('María Gómez', 10.00, 39.10, 'Libre', 25.00, 'finalizado', '2026-05-15'),
('Luis Morales', 21.05, 88.30, 'Libre', 35.00, 'finalizado', '2026-05-15'),
('Ana Rodríguez', 5.00, 24.15, 'Juvenil', 15.00, 'finalizado', '2026-05-15'),
('Jorge Castillo', 21.05, 110.00, 'Master B', 35.00, 'retirado', '2026-05-15'),
('Sofía Herrera', 10.00, 48.20, 'Libre', 25.00, 'finalizado', '2026-05-15'),
('David Estrada', 5.00, 22.45, 'Libre', 15.00, 'finalizado', '2026-05-15'),
('Elena Vargas', 21.05, 95.40, 'Master A', 35.00, 'finalizado', '2026-05-15'),
('Mateo Fernández', 5.00, 30.00, 'Juvenil', 15.00, 'descalificado', '2026-05-15'),
('Lucía Mendoza', 10.00, 52.10, 'Master B', 25.00, 'inscrito', '2026-06-20');