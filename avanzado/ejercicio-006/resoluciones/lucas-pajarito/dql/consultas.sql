/*=========================================================
  EJERCICIO 006 - EXPLAIN
  Tema: Autos Hiperdeportivos
  Archivo: dql/consultas.sql
=========================================================*/

USE campuslands_mysql;





/*=========================================================
CONSULTA 1
Listado completo de autos hiperdeportivos
=========================================================*/

EXPLAIN
SELECT
    ah.id_auto,
    ma.nombre_marca AS marca,
    mo.nombre_modelo AS modelo,
    pa.nombre_pais AS pais_origen,
    ah.anio,
    ah.potencia_hp,
    ah.velocidad_max_kmh,
    ah.precio_usd,
    ah.estado
FROM autos_hiperdeportivos ah
INNER JOIN marcas ma
    ON ah.id_marca = ma.id_marca
INNER JOIN modelos mo
    ON ah.id_modelo = mo.id_modelo
INNER JOIN paises pa
    ON ah.id_pais = pa.id_pais
ORDER BY ah.precio_usd DESC;





/*=========================================================
CONSULTA 2
Top 5 autos más potentes
=========================================================*/

EXPLAIN
SELECT
    ma.nombre_marca AS marca,
    mo.nombre_modelo AS modelo,
    ah.potencia_hp,
    ah.velocidad_max_kmh
FROM autos_hiperdeportivos ah
INNER JOIN marcas ma
    ON ah.id_marca = ma.id_marca
INNER JOIN modelos mo
    ON ah.id_modelo = mo.id_modelo
ORDER BY ah.potencia_hp DESC
LIMIT 5;





/*=========================================================
CONSULTA 3
Precio promedio por marca
=========================================================*/

EXPLAIN
SELECT
    ma.nombre_marca AS marca,
    COUNT(*) AS total_autos,
    AVG(ah.precio_usd) AS precio_promedio,
    MAX(ah.precio_usd) AS precio_maximo
FROM autos_hiperdeportivos ah
INNER JOIN marcas ma
    ON ah.id_marca = ma.id_marca
GROUP BY ma.nombre_marca
ORDER BY precio_promedio DESC;





/*=========================================================
CONSULTA 4
Autos disponibles con velocidad superior a 400 km/h
=========================================================*/

EXPLAIN
SELECT
    ma.nombre_marca AS marca,
    mo.nombre_modelo AS modelo,
    ah.velocidad_max_kmh,
    ah.aceleracion_0_100,
    ah.estado
FROM autos_hiperdeportivos ah
INNER JOIN marcas ma
    ON ah.id_marca = ma.id_marca
INNER JOIN modelos mo
    ON ah.id_modelo = mo.id_modelo
WHERE ah.estado = 'Disponible'
AND ah.velocidad_max_kmh > 400
ORDER BY ah.velocidad_max_kmh DESC;





/*=========================================================
CONSULTA 5
Cantidad de autos por país de origen
=========================================================*/

EXPLAIN
SELECT
    pa.nombre_pais AS pais,
    COUNT(*) AS total_autos,
    AVG(ah.potencia_hp) AS potencia_promedio,
    MAX(ah.velocidad_max_kmh) AS velocidad_maxima
FROM autos_hiperdeportivos ah
INNER JOIN paises pa
    ON ah.id_pais = pa.id_pais
GROUP BY pa.nombre_pais
ORDER BY total_autos DESC;