-- funcionalidades/ejercicio-020 - maria-montepeque
USE campuslands_mysql;

INSERT INTO estudiantes_academia (nombre, curso, fecha_inscripcion) VALUES
    ('Camila Vera', 'Full Stack JS', '2026-05-01'),
    ('Bruno Sanchez', 'Data Science', '2026-05-10'),
    ('Elisa Monge', 'DevOps', '2026-04-15'),
    ('Tomas Iriarte', 'Full Stack JS', '2026-06-20'),
    ('Nadia Ferrer', 'Ciberseguridad', '2026-05-25'),
    ('Ruben Castano', 'Data Science', '2026-06-05'),
    ('Paula Cifuentes', 'DevOps', '2026-03-10'),
    ('Ivan Roldan', 'Ciberseguridad', '2026-05-18');

-- 4 matriculas ya vencidas (sin pagar, fecha limite ya paso) que el evento
-- recurrente debe encontrar y marcar 'vencida'. Las otras 4 no deben cambiar:
-- 2 porque ya estan pagadas y 2 porque su fecha limite todavia no llega.
INSERT INTO matriculas_curso (estudiante_id, curso, fecha_limite_pago, pago_realizado, estado_matricula) VALUES
    (1, 'Full Stack JS', '2026-06-01', 0, 'vigente'),
    (2, 'Data Science', '2026-06-15', 0, 'vigente'),
    (3, 'DevOps', '2026-05-20', 1, 'vigente'),
    (4, 'Full Stack JS', '2026-09-01', 0, 'vigente'),
    (5, 'Ciberseguridad', '2026-07-01', 0, 'vigente'),
    (6, 'Data Science', '2026-08-10', 0, 'vigente'),
    (7, 'DevOps', '2026-04-01', 1, 'vigente'),
    (8, 'Ciberseguridad', '2026-06-25', 0, 'vigente');
