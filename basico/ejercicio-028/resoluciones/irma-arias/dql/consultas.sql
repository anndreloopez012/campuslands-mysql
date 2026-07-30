USE db_academia_tech;

-- Consulta 1: Listar todos los cursos que se encuentran en estado 'activo' ordenados por costo de mayor a menor
SELECT id, nombre_curso, tecnologia, horas_duracion, costo_inscripcion 
FROM cursos_tech 
WHERE estado = 'activo' 
ORDER BY costo_inscripcion DESC;

-- Consulta 2: Resumen agrupado por estado del curso, contando total de módulos y promedio de horas de duración
SELECT estado, COUNT(*) AS total_cursos, AVG(horas_duracion) AS promedio_horas
FROM cursos_tech
GROUP BY estado;

-- Consulta 3: Top 3 de cursos más costosos de la academia (Ranking de negocio)
SELECT nombre_curso, tecnologia, costo_inscripcion, estado
FROM cursos_tech
ORDER BY costo_inscripcion DESC
LIMIT 3;

-- Consulta 4: Filtrar cursos que tengan estado 'activo' y cuya duración supere las 35 horas
SELECT nombre_curso, tecnologia, horas_duracion, fecha_inicio
FROM cursos_tech
WHERE estado = 'activo' AND horas_duracion > 35;

-- Consulta 5: Conteo y costo máximo agrupado por la tecnología impartida
SELECT tecnologia, COUNT(*) AS cantidad_cursos, MAX(costo_inscripcion) AS costo_maximo
FROM cursos_tech
GROUP BY tecnologia
ORDER BY cantidad_cursos DESC;