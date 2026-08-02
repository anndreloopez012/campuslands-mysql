USE viajes_turismo_db;

-- 1. Total de paquetes y precio promedio agrupados por país (solo disponibles)
SELECT pais, COUNT(*) AS total_paquetes, AVG(precio_usd) AS precio_promedio
FROM paquetes_turisticos
WHERE estado = 'disponible'
GROUP BY pais
ORDER BY precio_promedio DESC;

-- 2. Ranking TOP 3 de los paquetes turísticos más costosos
SELECT destino, pais, precio_usd
FROM paquetes_turisticos
ORDER BY precio_usd DESC
LIMIT 3;

-- 3. Conteo de paquetes según su estado actual
SELECT estado, COUNT(*) AS cantidad_paquetes
FROM paquetes_turisticos
GROUP BY estado;

-- 4. Listado de paquetes turísticos con cupos disponibles mayores a 5
SELECT destino, pais, duracion_dias, cupos_disponibles, precio_usd
FROM paquetes_turisticos
WHERE cupos_disponibles > 5 AND estado = 'disponible'
ORDER BY cupos_disponibles DESC;

-- 5. Paquetes económicos con precio menor a 800 USD
SELECT destino, pais, precio_usd, duracion_dias
FROM paquetes_turisticos
WHERE precio_usd < 800.00
ORDER BY precio_usd ASC;
