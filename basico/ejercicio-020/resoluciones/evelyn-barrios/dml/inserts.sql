-- Datos de práctica. Se pueden modificar o agregar más registros.
USE campuslands_mysql;

-- Insertar artistas
INSERT INTO artistas (nombre, apellido, especialidad, años_experiencia, estado) VALUES
('Sofía', 'Martínez', 'Realismo', 8, 'activo'),
('Ricardo', 'Gómez', 'Tradicional', 12, 'activo'),
('Valeria', 'Pérez', 'Acuarela', 5, 'activo'),
('Andrés', 'Díaz', 'Blackwork', 10, 'activo'),
('Camila', 'Sánchez', 'Neo-tradicional', 6, 'vacaciones'), -- Artista de vacaciones
('Jorge', 'Ruiz', 'Geométrico', 7, 'activo'),
('Lucía', 'Fernández', 'Minimalista', 3, 'activo'),
('Pedro', 'Castro', 'Japonés', 15, 'activo');

-- Insertar citas
INSERT INTO citas (id_artista, fecha_cita, hora_cita, descripcion_tatuaje, precio_estimado, estado) VALUES
((SELECT id FROM artistas WHERE nombre = 'Sofía'), '2024-08-10', '10:00:00', 'Retrato de mascota', 350.00, 'confirmada'),
((SELECT id FROM artistas WHERE nombre = 'Ricardo'), '2024-08-10', '14:00:00', 'Águila tradicional en brazo', 280.00, 'pendiente'),
((SELECT id FROM artistas WHERE nombre = 'Valeria'), '2024-08-11', '11:30:00', 'Flor de loto acuarela', 200.00, 'confirmada'),
((SELECT id FROM artistas WHERE nombre = 'Andrés'), '2024-08-12', '09:00:00', 'Manga blackwork', 600.00, 'confirmada'),
((SELECT id FROM artistas WHERE nombre = 'Sofía'), '2024-08-12', '16:00:00', 'Paisaje realista en pierna', 450.00, 'pendiente'),
((SELECT id FROM artistas WHERE nombre = 'Jorge'), '2024-08-13', '10:00:00', 'Diseño geométrico en espalda', 500.00, 'confirmada'),
((SELECT id FROM artistas WHERE nombre = 'Lucía'), '2024-08-13', '13:00:00', 'Símbolo minimalista en muñeca', 120.00, 'confirmada'),
((SELECT id FROM artistas WHERE nombre = 'Pedro'), '2024-08-14', '10:00:00', 'Dragón japonés en hombro', 700.00, 'pendiente'),
((SELECT id FROM artistas WHERE nombre = 'Ricardo'), '2024-08-14', '15:00:00', 'Ancla tradicional', 220.00, 'realizada'),
((SELECT id FROM artistas WHERE nombre = 'Valeria'), '2024-08-15', '10:00:00', 'Mariposa acuarela', 180.00, 'cancelada'); -- Cita cancelada