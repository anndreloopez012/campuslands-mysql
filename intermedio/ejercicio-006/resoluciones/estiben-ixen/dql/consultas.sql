USE hypercars_db;


-- 1. Mostrar todos los autos ordenados por velocidad maxima
SELECT
    brand AS marca,
    model AS modelo,
    top_speed_kmh AS velocidad_maxima
FROM hyper_sports_cars
ORDER BY top_speed_kmh DESC;



-- 2. Obtener los autos con mas de 1000 caballos de fuerza
SELECT
    brand AS marca,
    model AS modelo,
    horsepower AS potencia
FROM hyper_sports_cars
WHERE horsepower > 1000
ORDER BY horsepower DESC;



-- 3. Calcular promedio de precio por pais de origen
SELECT
    country_origin AS pais,
    COUNT(*) AS cantidad_autos,
    AVG(price_usd) AS precio_promedio
FROM hyper_sports_cars
GROUP BY country_origin
ORDER BY precio_promedio DESC;



-- 4. Ranking de los 5 autos mas caros
SELECT
    brand AS marca,
    model AS modelo,
    price_usd AS precio
FROM hyper_sports_cars
ORDER BY price_usd DESC
LIMIT 5;



-- 5. Buscar autos fabricados despues del año 2022
SELECT
    brand AS marca,
    model AS modelo,
    year_manufactured AS año
FROM hyper_sports_cars
WHERE year_manufactured >= 2023
ORDER BY year_manufactured ASC;



-- 6. Cantidad de autos activos registrados
SELECT
    status AS estado,
    COUNT(*) AS total_autos
FROM hyper_sports_cars
GROUP BY status;