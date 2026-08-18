USE campuslands_mysql;

-- 1. Alumnos inscritos en "React desde Fundamentos"
SELECT a.nombre, m.fecha_inscripcion, m.calificacion_final
FROM matriculas_intermedio m
INNER JOIN alumnos_academia_intermedio a ON a.id_alumno = m.id_alumno
INNER JOIN talleres_intermedio t ON t.id_taller = m.id_taller
WHERE t.nombre_taller = 'React desde Fundamentos';

-- 2. Talleres en los que esta inscrita Renata Osorio
SELECT t.nombre_taller, t.categoria, m.calificacion_final
FROM matriculas_intermedio m
INNER JOIN talleres_intermedio t ON t.id_taller = m.id_taller
INNER JOIN alumnos_academia_intermedio a ON a.id_alumno = m.id_alumno
WHERE a.nombre = 'Renata Osorio';

-- 3. Cantidad de alumnos inscritos por taller
SELECT t.nombre_taller, COUNT(*) AS total_alumnos
FROM matriculas_intermedio m
INNER JOIN talleres_intermedio t ON t.id_taller = m.id_taller
GROUP BY t.nombre_taller
ORDER BY total_alumnos DESC;

-- 4. Cantidad de talleres por alumno
SELECT a.nombre, COUNT(*) AS total_talleres
FROM matriculas_intermedio m
INNER JOIN alumnos_academia_intermedio a ON a.id_alumno = m.id_alumno
GROUP BY a.nombre
ORDER BY total_talleres DESC;

-- 5. Alumnos inscritos en mas de 2 talleres (GROUP BY + HAVING)
SELECT a.nombre, COUNT(*) AS total_talleres
FROM matriculas_intermedio m
INNER JOIN alumnos_academia_intermedio a ON a.id_alumno = m.id_alumno
GROUP BY a.nombre
HAVING COUNT(*) > 2;

-- 6. Calificacion promedio por taller, solo matriculas ya calificadas
SELECT t.nombre_taller, ROUND(AVG(m.calificacion_final), 2) AS calificacion_promedio
FROM matriculas_intermedio m
INNER JOIN talleres_intermedio t ON t.id_taller = m.id_taller
WHERE m.calificacion_final IS NOT NULL
GROUP BY t.nombre_taller
ORDER BY calificacion_promedio DESC;
