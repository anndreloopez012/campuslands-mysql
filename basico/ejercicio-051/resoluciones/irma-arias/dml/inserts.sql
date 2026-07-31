USE db_dibujo_digital;

-- Inserción de mínimo 8 registros variados de proyectos de dibujo digital
INSERT INTO proyectos_dibujo (titulo_obra, software_usado, capas_totales, tiempo_horas, precio_comision_usd, estado) VALUES
('Retrato Cyberpunk 2077', 'Procreate', 85, 14.5, 150.00, 'completado'),
('Ilustración Fantasía Élfica', 'Photoshop', 120, 22.0, 300.00, 'completado'),
('Chica Anime Neón', 'Clip Studio Paint', 64, 8.5, 90.00, 'en_progreso'),
('Logotipo Vectorial Minimalista', 'Illustrator', 15, 4.0, 75.00, 'completado'),
('Monstruo de las Cavernas', 'Procreate', 95, 18.0, 220.00, 'revision'),
('Paisaje Sci-Fi Espacial', 'Photoshop', 150, 30.0, 450.00, 'en_progreso'),
('Sketch de Personaje Rápido', 'Clip Studio Paint', 25, 2.5, 40.00, 'pausado'),
('Mural Urbano Digital', 'Photoshop', 200, 45.0, 600.00, 'completado');