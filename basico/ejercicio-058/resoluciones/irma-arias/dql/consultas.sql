USE db_academia_tech;

-- Consulta 1: Filtrar exclusivamente los cursos que se encuentran en estado 'activo' ordenados por duración
SELECT id, codigo_curso, nombre_curso, tecnologia, horas_duracion, cupos_disponibles, estado
FROM cursos_academia
WHERE estado = 'activo'
ORDER BY horas_duracion DESC;

-- Consulta 2: Filtrar los cursos que se encuentran 'en_inscripcion' mostrando cuántos cupos totales hay disponibles por tecnología
SELECT tecnologia, COUNT(*) AS total_cursos_inscripcion, SUM(cupos_disponibles) AS suma_cupos_libres
FROM cursos_academia
WHERE estado = 'en_inscripcion'
GROUP BY tecnologia
ORDER BY suma_cupos_libres DESC;

-- Consulta 3: Resumen agrupado por estado del curso, evaluando la cantidad de módulos y el promedio de horas de duración
SELECT estado, COUNT(*) AS cantidad_cursos, ROUND(AVG(horas_duracion), 1) AS promedio_horas
FROM cursos_academia
GROUP BY estado
ORDER BY cantidad_cursos DESC;

-- Consulta 4: Filtrar cursos que NO estén finalizados (activos o en inscripción), ordenados por cupos disponibles
SELECT codigo_curso, nombre_curso, tecnologia, horas_duracion, cupos_disponibles, estado
FROM cursos_academia
WHERE estado IN ('activo', 'en_inscripcion')
ORDER BY cupos_disponibles DESC;

-- Consulta 5: Resumen global evaluando el total de registros en la academia, filtrando solo los que tienen estado 'activo' y sumando sus horas
SELECT COUNT(*) AS total_cursos_activos, SUM(horas_duracion) AS horas_totales_activas, SUM(cupos_disponibles) AS cupos_activos_totales
FROM cursos_academia
WHERE estado = 'activo';