USE equipo_streaming_db;

-- 1. Listar equipos de streaming con el nombre de su marca y país de origen mediante JOIN
SELECT e.nombre_equipo, e.tipo_dispositivo, m.nombre_marca AS marca, m.pais_origen, e.precio_usd, e.estado
FROM equipos_streaming e
JOIN marcas_streaming m ON e.id_marca = m.id_marca
ORDER BY e.precio_usd DESC;

-- 2. Conteo de equipos y precio promedio agrupados por marca
SELECT m.nombre_marca, COUNT(*) AS total_equipos, AVG(e.precio_usd) AS precio_promedio
FROM equipos_streaming e
JOIN marcas_streaming m ON e.id_marca = m.id_marca
GROUP BY m.nombre_marca
ORDER BY precio_promedio DESC;

-- 3. Ranking TOP 3 de los equipos de streaming más costosos relacionando la marca
SELECT e.nombre_equipo, m.nombre_marca, e.precio_usd, e.estado
FROM equipos_streaming e
JOIN marcas_streaming m ON e.id_marca = m.id_marca
ORDER BY e.precio_usd DESC
LIMIT 3;

-- 4. Filtrar equipos disponibles o en oferta cuyo precio sea mayor a 100 USD
SELECT e.nombre_equipo, m.nombre_marca, e.precio_usd, e.estado
FROM equipos_streaming e
JOIN marcas_streaming m ON e.id_marca = m.id_marca
WHERE e.estado IN ('disponible', 'en_oferta') AND e.precio_usd > 100.00
ORDER BY e.precio_usd ASC;

-- 5. Inversión total en inventario (suma de precios) agrupada por el país de origen de la marca
SELECT m.pais_origen, COUNT(*) AS cantidad_dispositivos, SUM(e.precio_usd) AS inversion_total
FROM equipos_streaming e
JOIN marcas_streaming m ON e.id_marca = m.id_marca
GROUP BY m.pais_origen
ORDER BY inversion_total DESC;
