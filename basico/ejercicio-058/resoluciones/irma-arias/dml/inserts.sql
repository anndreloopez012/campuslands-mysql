USE db_academia_tech;

-- Inserción de mínimo 8 registros variados de cursos y módulos académicos
INSERT INTO cursos_academia (codigo_curso, nombre_curso, tecnologia, horas_duracion, cupos_disponibles, estado) VALUES
('CUR-001', 'Fundamentos de Programación con Python', 'Python', 60, 15, 'activo'),
('CUR-002', 'Bases de Datos Relacionales y MySQL', 'MySQL', 45, 10, 'activo'),
('CUR-003', 'Control de Versiones Profesional con Git', 'Git', 20, 0, 'finalizado'),
('CUR-004', 'Desarrollo Web Frontend con HTML y CSS', 'Frontend', 80, 25, 'en_inscripcion'),
('CUR-005', 'Automatización de Workflows con n8n', 'n8n', 30, 8, 'en_inscripcion'),
('CUR-006', 'Algoritmos y Lógica Computacional', 'Python', 50, 12, 'suspendido'),
('CUR-007', 'Diseño de Interfaces Web Modernas', 'Frontend', 40, 5, 'activo'),
('CUR-008', 'Optimización de Consultas SQL Avanzadas', 'MySQL', 35, 0, 'finalizado');