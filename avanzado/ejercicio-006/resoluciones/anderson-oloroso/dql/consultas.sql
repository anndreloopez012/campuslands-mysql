EXPLAIN
SELECT
    auto_id,
    marca,
    modelo,
    potencia_hp,
    velocidad_maxima_kmh
FROM autos_hiperdeportivos
WHERE marca = 'Bugatti';

EXPLAIN
SELECT
    auto_id,
    marca,
    modelo,
    potencia_hp
FROM autos_hiperdeportivos
WHERE potencia_hp > 1500
ORDER BY potencia_hp DESC;

EXPLAIN
SELECT
    auto_id,
    marca,
    modelo,
    velocidad_maxima_kmh
FROM autos_hiperdeportivos
WHERE velocidad_maxima_kmh >= 400
ORDER BY velocidad_maxima_kmh DESC;

EXPLAIN
SELECT
    auto_id,
    marca,
    modelo,
    anio,
    pais_origen
FROM autos_hiperdeportivos
WHERE anio >= 2023
ORDER BY anio DESC;

EXPLAIN
SELECT
    marca,
    COUNT(*) AS cantidad_autos,
    AVG(potencia_hp) AS potencia_promedio
FROM autos_hiperdeportivos
WHERE potencia_hp >= 1000
GROUP BY marca;