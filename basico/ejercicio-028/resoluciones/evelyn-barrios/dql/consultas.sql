-- dql/consultas.sql
-- Consultas para analizar los datos de los estudiantes de la academia.

USE academia_tech;

-- 1. Conteo de estudiantes por estado de inscripción.
-- Permite ver rápidamente la distribución de los estudiantes.
SELECT 
    estado_inscripcion, 
    COUNT(*) AS total_estudiantes
FROM estudiantes
GROUP BY estado_inscripcion
ORDER BY total_estudiantes DESC;

-- 2. Top 3 estudiantes activos con el mejor promedio.
-- Identifica a los estudiantes con mejor rendimiento actual.
SELECT nombre_completo, carrera, promedio_calificaciones
FROM estudiantes
WHERE estado_inscripcion = 'Activo'
ORDER BY promedio_calificaciones DESC
LIMIT 3;

-- 3. Estudiantes de 'Ciencia de Datos' que no se han graduado.
SELECT nombre_completo, email, estado_inscripcion, promedio_calificaciones
FROM estudiantes
WHERE carrera = 'Ciencia de Datos' AND estado_inscripcion != 'Graduado';

-- 4. Promedio de calificaciones general de todos los estudiantes 'Activos'.
SELECT AVG(promedio_calificaciones) AS promedio_general_activos
FROM estudiantes
WHERE estado_inscripcion = 'Activo';

-- 5. Listar estudiantes que han pausado o se han retirado.
-- Útil para el equipo de retención estudiantil.
SELECT nombre_completo, carrera, estado_inscripcion, fecha_registro
FROM estudiantes
WHERE estado_inscripcion IN ('Pausado', 'Retirado');