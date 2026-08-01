-- DQL: Consultas analíticas y de reportes utilizando WHERE para autos hiperdeportivos
USE db_hiperdeportivos;

-- 1. Filtrar autos cuya velocidad máxima sea superior a 400 km/h ordenados de mayor a menor velocidad
SELECT codigo_chasis, marca, modelo, velocidad_maxima_kmh, precio_millones, anio_fabricacion, estado_disponibilidad
FROM autos_hiperdeportivos
WHERE velocidad_maxima_kmh > 400
ORDER BY velocidad_maxima_kmh DESC;

-- 2. Filtrar autos que se encuentran con estado 'disponible' o 'reservado' con un precio menor a 3.50 millones
SELECT codigo_chasis, marca, modelo, velocidad_maxima_kmh, precio_millones, anio_fabricacion, estado_disponibilidad
FROM autos_hiperdeportivos
WHERE estado_disponibilidad IN ('disponible', 'reservado') AND precio_millones < 3.50
ORDER BY precio_millones ASC;

-- 3. Agrupar por estado de disponibilidad para analizar la cantidad de vehículos y el precio promedio por categoría (aplicando WHERE previo para excluir vendidos)
SELECT estado_disponibilidad, COUNT(*) AS total_vehiculos, MAX(velocidad_maxima_kmh) AS velocidad_maxima_registro, ROUND(AVG(precio_millones), 2) AS precio_promedio
FROM autos_hiperdeportivos
WHERE estado_disponibilidad != 'vendido'
GROUP BY estado_disponibilidad
ORDER BY total_vehiculos DESC;

-- 4. Ranking TOP 3 de los hiperdeportivos más veloces utilizando filtros y límites
SELECT codigo_chasis, marca, modelo, velocidad_maxima_kmh, precio_millones, anio_fabricacion, estado_disponibilidad
FROM autos_hiperdeportivos
WHERE anio_fabricacion >= 2023
ORDER BY velocidad_maxima_kmh DESC
LIMIT 3;

-- 5. Resumen financiero global filtrado exclusivamente para los modelos disponibles en inventario
SELECT COUNT(*) AS total_disponibles, SUM(precio_millones) AS inversion_total_disponible, ROUND(AVG(velocidad_maxima_kmh), 2) AS velocidad_media_disponibles
FROM autos_hiperdeportivos
WHERE estado_disponibilidad = 'disponible';