-- dml/inserts.sql
-- Inserción de datos de prueba para la tabla de estudiantes.

USE academia_tech;

INSERT INTO estudiantes (nombre_completo, email, carrera, estado_inscripcion, promedio_calificaciones, fecha_registro) VALUES
('Ana López', 'ana.lopez@example.com', 'Desarrollo Full-Stack', 'Activo', 92.50, '2024-01-15'),
('Luis Martínez', 'luis.martinez@example.com', 'Ciencia de Datos', 'Activo', 88.00, '2024-02-01'),
('Carla Gómez', 'carla.gomez@example.com', 'Ciberseguridad', 'Pausado', 85.75, '2023-09-10'),
('Pedro Rodríguez', 'pedro.rodriguez@example.com', 'Desarrollo Full-Stack', 'Graduado', 95.00, '2022-08-20'),
('Sofía Hernández', 'sofia.hernandez@example.com', 'Ciencia de Datos', 'Activo', 91.20, '2024-02-05'),
('Javier Díaz', 'javier.diaz@example.com', 'Desarrollo Full-Stack', 'Retirado', 75.00, '2023-11-01'),
('Laura Pérez', 'laura.perez@example.com', 'Ciberseguridad', 'Activo', 89.50, '2024-01-20'),
('Miguel Sánchez', 'miguel.sanchez@example.com', 'Ciencia de Datos', 'Graduado', 93.80, '2022-10-15');