-- Consultas base. Completa o reemplaza segun el enunciado.
SELECT 
    e.codigo_estudiante,
    e.nombre AS estudiante,
    c.titulo AS curso,
    c.nivel,
    m.fecha_matricula,
    m.estado
FROM estudiantes e
INNER JOIN matriculas m ON e.id = m.id_estudiante
INNER JOIN cursos c ON m.id_curso = c.id
WHERE e.codigo_estudiante = 'EST-001';
