USE db_estudio_tatuajes;

-- Inserción de mínimo 8 registros variados de tatuajes
INSERT INTO tatuajes_estudio (nombre_cliente, estilo_tatuaje, tamanio_cm2, costo_usd, tiempo_estimado_horas, estado) VALUES
('Marcela Gomez', 'Realismo', 300, 450.00, 6.0, 'completado'),
('Esteban Morales', 'Tradicional', 150, 200.00, 3.0, 'completado'),
('Sofia Castiblanco', 'Minimalista', 40, 90.00, 1.0, 'agendado'),
('Daniel Vargas', 'Japones', 600, 900.00, 12.0, 'en_proceso'),
('Paola Jimenez', 'Neo-Tradicional', 200, 320.00, 4.5, 'completado'),
('Felipe Restrepo', 'Realismo', 450, 700.00, 8.0, 'agendado'),
('Tatiana Ospina', 'Minimalista', 60, 120.00, 1.5, 'completado'),
('Julian Mahecha', 'Tradicional', 180, 250.00, 3.5, 'cancelado');