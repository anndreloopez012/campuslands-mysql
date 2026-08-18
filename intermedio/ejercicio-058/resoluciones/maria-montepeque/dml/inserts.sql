-- Datos de practica: alumnos, talleres y matriculas de una academia tech.
USE campuslands_mysql;

INSERT INTO alumnos_academia_intermedio (nombre, email) VALUES
('Renata Osorio', 'renata.osorio@mail.com'),
('Tomas Duarte', 'tomas.duarte@mail.com'),
('Valeria Ponce', 'valeria.ponce@mail.com'),
('Emilio Salcedo', 'emilio.salcedo@mail.com'),
('Camila Restrepo', 'camila.restrepo@mail.com');

INSERT INTO talleres_intermedio (nombre_taller, categoria, duracion_horas) VALUES
('Desarrollo Backend con Express', 'backend', 55),
('React desde Fundamentos', 'frontend', 48),
('Analisis de Datos con Pandas', 'datos', 65),
('Seguridad Ofensiva Basica', 'seguridad', 50);

INSERT INTO matriculas_intermedio (id_alumno, id_taller, fecha_inscripcion, calificacion_final) VALUES
(1, 1, '2026-01-10', 4.40),
(1, 2, '2026-01-15', 4.10),
(1, 3, '2026-02-01', NULL),
(2, 3, '2026-01-12', 4.70),
(2, 4, '2026-02-05', 3.80),
(3, 4, '2026-01-20', 4.30),
(4, 1, '2026-01-25', 3.60),
(4, 2, '2026-02-10', NULL),
(5, 2, '2026-01-18', 4.60),
(5, 3, '2026-02-15', 4.20);
