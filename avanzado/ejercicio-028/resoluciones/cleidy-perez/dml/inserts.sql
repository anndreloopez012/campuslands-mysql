-- Datos de practica. Puedes cambiarlos o agregar mas filas.
-- Insertar Estudiantes (6 registros)
INSERT INTO estudiantes (codigo_estudiante, nombre, email) VALUES
('EST-001', 'Mateo Rossi', 'mateo.rossi@tech.com'),
('EST-002', 'Camila Fernández', 'camila.f@tech.com'),
('EST-003', 'Lucas Silva', 'lucas.silva@tech.com'),
('EST-004', 'Mariana López', 'mariana.l@tech.com'),
('EST-005', 'Gabriel Torres', 'gabriel.t@tech.com'),
('EST-006', 'Valentina Díaz', 'valentina.d@tech.com');

-- Insertar Cursos (6 registros)
INSERT INTO cursos (codigo_curso, titulo, horas_duracion, nivel) VALUES
('CUR-101', 'Fundamentos de Bases de Datos SQL', 40, 'Principiante'),
('CUR-102', 'Desarrollo Web Fullstack con React y Node', 120, 'Intermedio'),
('CUR-103', 'Arquitectura de Microservicios', 80, 'Avanzado'),
('CUR-104', 'Ciencia de Datos con Python', 90, 'Intermedio'),
('CUR-105', 'DevOps y CI/CD Pipelines', 60, 'Avanzado'),
('CUR-106', 'Introducción a Algoritmos', 30, 'Principiante');

-- Insertar Instructores (6 registros)
INSERT INTO instructores (codigo_instructor, nombre, especialidad) VALUES
('INS-01', 'Ing. Javier Ruiz', 'Bases de Datos y SQL'),
('INS-02', 'Dra. Andrea Morales', 'Backend & Cloud'),
('INS-03', 'Msc. Gonzalo Pérez', 'Frontend & UI/UX'),
('INS-04', 'Lic. Clara Benítez', 'Data Science & IA'),
('INS-05', 'Ing. Esteban Castro', 'DevOps y Seguridad'),
('INS-06', 'Dra. Natalia Vega', 'Algoritmos y Estructuras');

-- Insertar Ejercicios (6 registros con el Ejercicio 028)
INSERT INTO ejercicios (codigo, titulo, dificultad, tematica) VALUES
('EJ-024', 'Definición de Normalización 1FN, 2FN y 3FN', 'Intermedio', 'academia tech'),
('EJ-025', 'Diseño de Modelo Entidad-Relación', 'Intermedio', 'academia tech'),
('EJ-026', 'Restricciones Foreign Key en Cascada', 'Intermedio aplicado', 'academia tech'),
('EJ-027', 'Consultas Multitabla con LEFT y RIGHT JOIN', 'Intermedio', 'academia tech'),
('EJ-028', 'tablas puente para academia tech', 'Intermedio aplicado', 'academia tech'),
('EJ-029', 'Subconsultas Correlacionadas y Filtros Avanzados', 'Avanzado', 'academia tech');

-- Insertar Registros en Tabla Puente 1: Matriculas (6 registros)
INSERT INTO matriculas (id_estudiante, id_curso, estado, calificacion_final) VALUES
(1, 1, 'Completado', 9.50),
(1, 2, 'Activo', NULL),
(2, 1, 'Completado', 8.80),
(3, 4, 'Activo', NULL),
(4, 3, 'Completado', 10.00),
(5, 5, 'Cancelado', NULL);

-- Insertar Registros en Tabla Puente 2: Asignacion_Instructores (6 registros)
INSERT INTO asignacion_instructores (id_curso, id_instructor, rol) VALUES
(1, 1, 'Titular'),
(2, 2, 'Titular'),
(2, 3, 'Adjunto'),
(3, 2, 'Titular'),
(4, 4, 'Titular'),
(5, 5, 'Titular');
