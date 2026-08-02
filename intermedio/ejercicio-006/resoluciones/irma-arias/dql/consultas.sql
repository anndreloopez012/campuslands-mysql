USE autos_hiperdeportivos_db;

-- 1. Filtrar hiperdeportivos disponibles con potencia mayor a 1000 HP ordenados por velocidad máxima
SELECT modelo, fabricante, potencia_hp, velocidad_max_kmh, precio_usd
FROM hiperdeportivos
WHERE estado = 'disponible' AND potencia_hp > 1000
ORDER BY velocidad_max_kmh DESC;

-- 2. Conteo de hiperdeportivos y precio promedio agrupados por estado actual
SELECT estado, COUNT(*) AS total_autos, AVG(precio_usd) AS precio_promedio
FROM hiperdeportivos
GROUP BY estado
ORDER BY total_autos DESC;

-- 3. Ranking TOP 3 de los hiperdeportivos más costosos del mercado
SELECT modelo, fabricante, precio_usd, estado
FROM hiperdeportivos
ORDER BY precio_usd DESC
LIMIT 3;

-- 4. Filtrar autos reservados o disponibles con un precio menor a 3.5 millones de USD
SELECT modelo, fabricante, precio_usd, estado
FROM hiperdeportivos
WHERE estado IN ('disponible', 'reservado') AND precio_usd < 3500000.00
ORDER BY precio_usd ASC;

-- 5. Potencia promedio y velocidad máxima promedio agrupadas por el fabricante
SELECT fabricante, COUNT(*) AS modelos_registrados, AVG(potencia_hp) AS potencia_promedio, MAX(velocidad_max_kmh) AS velocidad_maxima_registrada
FROM hiperdeportivos
GROUP BY fabricante
ORDER BY potencia_promedio DESC;
