USE db_carreras_urbanas;

-- Inserción de mínimo 8 registros variados de corredores urbanos
INSERT INTO participantes_carreras (nombre_corredor, categoria_distancia, costo_inscripcion, kilometros_recorridos, estado_pago, fecha_inscripcion) VALUES
('Carla Mendoza', '10K', 45.00, 10.00, 'pagado', '2026-06-01'),
('Esteban Quito', '21K', 75.50, 21.10, 'pagado', '2026-06-03'),
('Valeria Solís', '5K', 30.00, 5.00, 'pendiente', '2026-06-05'),
('Julián Álvarez', '10K', 45.00, 10.00, 'pagado', '2026-06-10'),
('Mariana Pineda', '21K', 75.50, 21.10, 'reembolsado', '2026-06-12'),
('Andrés Iniesta', '5K', 30.00, 5.00, 'pagado', '2026-06-15'),
('Sofía Vergara', '10K', 45.00, 10.00, 'pendiente', '2026-06-18'),
('Mateo Kova', '21K', 75.50, 21.10, 'pagado', '2026-06-20');