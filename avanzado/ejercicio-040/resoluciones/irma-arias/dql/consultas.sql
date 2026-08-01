-- DQL: Consultas analíticas y de reportes utilizando COUNT y SUM para carreras urbanas
USE db_carreras_urbanas;

-- 1. Conteo total de carreras e suma global de participantes inscritos y recaudación en toda la base de datos
SELECT COUNT(*) AS total_carreras_registradas, SUM(participantes_inscritos) AS suma_total_participantes, SUM(recaudacion_total) AS recaudacion_global
FROM carreras_urbanas;

-- 2. Análisis agrupado por estado de carrera: número de eventos (COUNT) y suma de recaudación (SUM) por categoría
SELECT estado_carrera, COUNT(*) AS cantidad_carreras, SUM(participantes_inscritos) AS total_participantes_estado, SUM(recaudacion_total) AS recaudacion_total_estado
FROM carreras_urbanas
GROUP BY estado_carrera
ORDER BY recaudacion_total_estado DESC;

-- 3. Filtrar carreras con distancia mayor o igual a 10 km y calcular el total de corredores y fondos acumulados en dichos eventos
SELECT COUNT(*) AS carreras_larga_distancia, SUM(participantes_inscritos) AS corredores_totales_larga_distancia, SUM(recaudacion_total) AS fondos_totales_larga_distancia
FROM carreras_urbanas
WHERE distancia_km >= 10.00;

-- 4. Ranking TOP 3 de las carreras urbanas con mayor número de participantes inscritos (utilizando SUM / COUNT indirecto con ORDER BY y LIMIT)
SELECT codigo_carrera, nombre_carrera, distancia_km, participantes_inscritos, recaudacion_total, estado_carrera
FROM carreras_urbanas
ORDER BY participantes_inscritos DESC
LIMIT 3;

-- 5. Reporte financiero y de asistencia exclusivo para carreras que se encuentran con estado 'abierta'
SELECT COUNT(*) AS total_carreras_abiertas, SUM(participantes_inscritos) AS asistentes_abiertas, SUM(recaudacion_total) AS ingresos_abiertas
FROM carreras_urbanas
WHERE estado_carrera = 'abierta';