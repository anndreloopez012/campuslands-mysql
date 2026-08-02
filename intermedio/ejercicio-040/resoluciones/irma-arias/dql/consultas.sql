USE carreras_urbanas_db;

-- 1. Listar todas las inscripciones detallando el corredor, correo único, número de dorsal único, categoría y tiempo de meta
SELECT i.numero_dorsal, c.nombre_completo, c.correo_electronico, cat.nombre_categoria, cat.distancia_km, i.tiempo_meta_minutos, i.estado_participacion
FROM inscripciones_carrera i
JOIN corredores c ON i.id_corredor = c.id_corredor
JOIN categorias_carrera cat ON i.id_categoria = cat.id_categoria
ORDER BY i.numero_dorsal ASC;

-- 2. Análisis agrupado por categoría: Calcular el total de corredores inscritos y el tiempo promedio de llegada en cada modalidad
SELECT cat.nombre_categoria, cat.distancia_km, COUNT(i.id_inscripcion) AS total_inscritos, AVG(i.tiempo_meta_minutos) AS tiempo_promedio_minutos
FROM categorias_carrera cat
JOIN inscripciones_carrera i ON cat.id_categoria = i.id_categoria
GROUP BY cat.id_categoria, cat.nombre_categoria, cat.distancia_km
ORDER BY distancia_km ASC;

-- 3. Filtrar corredores cuya participación esté en estado 'completado' y cuyo tiempo de meta sea menor o igual a 50 minutos
SELECT c.nombre_completo, c.correo_electronico, cat.nombre_categoria, i.numero_dorsal, i.tiempo_meta_minutos, i.estado_participacion
FROM inscripciones_carrera i
JOIN corredores c ON i.id_corredor = c.id_corredor
JOIN categorias_carrera cat ON i.id_categoria = cat.id_categoria
WHERE i.estado_participacion = 'completado' AND i.tiempo_meta_minutos <= 50.00
ORDER BY i.tiempo_meta_minutos ASC;

-- 4. Reporte estadístico de participación por estado operativo de los corredores en la competición
SELECT i.estado_participacion, COUNT(i.id_inscripcion) AS cantidad_corredores
FROM inscripciones_carrera i
GROUP BY i.estado_participacion
ORDER BY cantidad_corredores DESC;

-- 5. Ranking TOP 3 de los corredores más rápidos en la categoría de 5K (Sprint Urbano 5K)
SELECT i.numero_dorsal, c.nombre_completo, cat.nombre_categoria, i.tiempo_meta_minutos
FROM inscripciones_carrera i
JOIN corredores c ON i.id_corredor = c.id_corredor
JOIN categorias_carrera cat ON i.id_categoria = cat.id_categoria
WHERE cat.nombre_categoria = 'Sprint Urbano 5K' AND i.estado_participacion = 'completado'
ORDER BY i.tiempo_meta_minutos ASC
LIMIT 3;
