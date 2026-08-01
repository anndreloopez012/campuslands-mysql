
-- DQL: Consultas analíticas y reportes SELECT para el estudio de tatuajes
USE db_estudio_tatuajes;

-- 1. Listado general de citas ordenadas por precio de mayor a menor
SELECT id, codigo_cita, nombre_cliente, estilo_tatuaje, horas_estimadas, precio_dolares, estado
FROM citas_tatuajes
ORDER BY precio_dolares DESC;

-- 2. Filtrar citas que se encuentran con estado 'completado' o 'en_proceso' ordenadas por menor precio
SELECT codigo_cita, nombre_cliente, estilo_tatuaje, horas_estimadas, precio_dolares, estado
FROM citas_tatuajes
WHERE estado IN ('completado', 'en_proceso')
ORDER BY precio_dolares ASC;

-- 3. Agrupar por estilo de tatuaje para conocer la cantidad de registros y las horas estimadas totales
SELECT estilo_tatuaje, COUNT(*) AS total_citas, SUM(horas_estimadas) AS horas_totales_estilo
FROM citas_tatuajes
GROUP BY estilo_tatuaje
ORDER BY total_citas DESC;

-- 4. Top 3 de tatuajes con mayor costo en el estudio (Ranking de obras de mayor valor)
SELECT codigo_cita, nombre_cliente, estilo_tatuaje, horas_estimadas, precio_dolares, estado
FROM citas_tatuajes
ORDER BY precio_dolares DESC
LIMIT 3;

-- 5. Resumen financiero global del estudio (Precio máximo, precio mínimo y costo promedio general)
SELECT MAX(precio_dolares) AS tatuaje_mas_costoso, MIN(precio_dolares) AS tatuaje_mas_economico, ROUND(AVG(precio_dolares), 2) AS precio_promedio_general
FROM citas_tatuajes;