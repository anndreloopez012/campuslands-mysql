-- Consultas de verificación e indicadores para carreras urbanas
USE campuslands_mysql;

-- 1. Indicador general: Total de recaudación y corredores por estado de participación
SELECT 
    estado_participacion,
    COUNT(*) AS total_corredores,
    SUM(costo_inscripcion_usd) AS recaudacion_total_usd
FROM ejercicio_010_carreras_urbanas
GROUP BY estado_participacion;


-- 2. Análisis de rendimiento: Ritmo promedio por kilómetro (minutos por km) de los finalizados
SELECT 
    corredor,
    distancia_km,
    tiempo_minutos,
    ROUND((tiempo_minutos / distancia_km), 2) AS ritmo_min_por_km
FROM ejercicio_010_carreras_urbanas
WHERE estado_participacion = 'finalizado'
ORDER BY ritmo_min_por_km ASC;


-- 3. Reporte por categoría: Tiempo promedio de carrera en distancia de 10 km
SELECT 
    categoria_edad,
    COUNT(*) AS corredores_10k,
    ROUND(AVG(tiempo_minutos), 2) AS tiempo_promedio_min
FROM ejercicio_010_carreras_urbanas
WHERE distancia_km = 10.00 AND estado_participacion = 'finalizado'
GROUP BY categoria_edad;


-- 4. Consulta de control: Corredores retirados o descalificados
SELECT 
    corredor,
    distancia_km,
    estado_participacion,
    fecha_carrera
FROM ejercicio_010_carreras_urbanas
WHERE estado_participacion IN ('retirado', 'descalificado');


