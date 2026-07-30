USE db_academia_tech;

-- Inserción de mínimo 8 registros realistas de cursos de tecnología
INSERT INTO cursos_tech (nombre_curso, tecnologia, horas_duracion, costo_inscripcion, estado, fecha_inicio) VALUES
('Bases de Datos Relacionales', 'MySQL', 40, 150.00, 'activo', '2026-08-01'),
('Automatización de Procesos', 'n8n', 30, 200.50, 'activo', '2026-08-10'),
('Programación Lógica y Algoritmos', 'Python', 50, 0.00, 'activo', '2026-06-15'),
('Control de Versiones Profesional', 'Git', 20, 80.00, 'pausado', '2026-05-01'),
('Desarrollo Web Frontend Moderno', 'HTML/CSS/JS', 60, 250.00, 'activo', '2026-09-01'),
('Ingeniería de Prompts y IA', 'AI Tools', 25, 120.00, 'finalizado', '2026-03-10'),
('Despliegue y Infraestructura Cloud', 'Docker', 35, 180.00, 'pausado', '2026-04-15'),
('Desarrollo de Interfaces Web', 'React', 45, 220.00, 'finalizado', '2026-02-01');