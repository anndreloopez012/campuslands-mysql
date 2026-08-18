USE campuslands_mysql;

-- 1. Alumnos activos ordenados por progreso
SELECT nombre, programa, progreso_porcentaje
FROM alumnos_tech_basico
WHERE estado = 'activo'
ORDER BY progreso_porcentaje DESC;

-- 2. Alumnos graduados
SELECT nombre, programa, fecha_inscripcion
FROM alumnos_tech_basico
WHERE estado = 'graduado';

-- 3. Alumnos que no estan activos (pausados, retirados o graduados)
SELECT nombre, programa, estado
FROM alumnos_tech_basico
WHERE estado <> 'activo'
ORDER BY estado;

-- 4. Alumnos activos o pausados con progreso menor al 50%
SELECT nombre, estado, progreso_porcentaje
FROM alumnos_tech_basico
WHERE estado IN ('activo', 'pausado') AND progreso_porcentaje < 50
ORDER BY progreso_porcentaje;

-- 5. Cantidad de alumnos por estado
SELECT estado, COUNT(*) AS total
FROM alumnos_tech_basico
GROUP BY estado
ORDER BY total DESC;

-- 6. Progreso promedio de los alumnos activos, por programa
SELECT programa, AVG(progreso_porcentaje) AS progreso_promedio
FROM alumnos_tech_basico
WHERE estado = 'activo'
GROUP BY programa
ORDER BY progreso_promedio DESC;
