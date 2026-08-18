SELECT
    auto_id,
    marca,
    modelo,
    anio,
    motor,
    potencia_hp,
    velocidad_maxima_kmh,
    precio,
    pais_origen
FROM autos_hiperdeportivos
ORDER BY potencia_hp DESC;

SELECT
    marca,
    modelo,
    velocidad_maxima_kmh
FROM autos_hiperdeportivos
WHERE velocidad_maxima_kmh > 400
ORDER BY velocidad_maxima_kmh DESC;

SELECT
    marca,
    modelo,
    potencia_hp,
    precio
FROM autos_hiperdeportivos
WHERE potencia_hp >= 1000
ORDER BY precio DESC;

SELECT
    pais_origen,
    COUNT(*) AS cantidad_autos
FROM autos_hiperdeportivos
GROUP BY pais_origen
ORDER BY cantidad_autos DESC;

SELECT
    marca,
    modelo,
    precio,
    potencia_hp
FROM autos_hiperdeportivos
WHERE precio BETWEEN 900000000.00 AND 1500000000.00
ORDER BY precio ASC;