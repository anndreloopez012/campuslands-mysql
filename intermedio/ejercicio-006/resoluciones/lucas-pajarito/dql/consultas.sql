-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

/* ==========================================================
   CONSULTA 1
   Listado completo de autos hiperdeportivos
   ========================================================== */

SELECT
    ah.id AS id_auto,
    ma.nombre_marca AS marca,
    mo.nombre AS modelo,
    po.nombre_pais AS pais_origen,
    ah.anio AS anio_fabricacion,
    ah.potencia_hp,
    ah.velocidad_max_kmh,
    ah.precio_usd
FROM Autos_Hiperdeportivos_06 ah
INNER JOIN marcas ma
    ON ah.id_marca = ma.id_marcas
INNER JOIN modelo mo
    ON ah.id_modelo = mo.id_modelo
INNER JOIN pais_origen po
    ON ah.id_pais_origen = po.id_pais
ORDER BY ah.precio_usd DESC;


/* ==========================================================
   CONSULTA 2
   Top 5 autos más potentes
   ========================================================== */

SELECT
    ma.nombre_marca AS marca,
    mo.nombre AS modelo,
    ah.potencia_hp,
    ah.velocidad_max_kmh
FROM Autos_Hiperdeportivos_06 ah
INNER JOIN marcas ma
    ON ah.id_marca = ma.id_marcas
INNER JOIN modelo mo
    ON ah.id_modelo = mo.id_modelo
ORDER BY ah.potencia_hp DESC
LIMIT 5;


/* ==========================================================
   CONSULTA 3
   Precio promedio por marca
   ========================================================== */

SELECT
    ma.nombre_marca AS marca,
    COUNT(*) AS total_modelos,
    AVG(ah.precio_usd) AS precio_promedio
FROM Autos_Hiperdeportivos_06 ah
INNER JOIN marcas ma
    ON ah.id_marca = ma.id_marcas
GROUP BY ma.nombre_marca
ORDER BY precio_promedio DESC;


/* ==========================================================
   CONSULTA 4
   Autos con velocidad mayor a 400 km/h
   ========================================================== */

SELECT
    ma.nombre_marca AS marca,
    mo.nombre AS modelo,
    ah.velocidad_max_kmh,
    ah.potencia_hp
FROM Autos_Hiperdeportivos_06 ah
INNER JOIN marcas ma
    ON ah.id_marca = ma.id_marcas
INNER JOIN modelo mo
    ON ah.id_modelo = mo.id_modelo
WHERE ah.velocidad_max_kmh > 400
ORDER BY ah.velocidad_max_kmh DESC;


/* ==========================================================
   CONSULTA 5
   Cantidad de autos registrados por país de origen
   ========================================================== */

SELECT
    po.nombre_pais AS pais,
    COUNT(*) AS total_autos,
    MAX(ah.velocidad_max_kmh) AS mayor_velocidad,
    AVG(ah.potencia_hp) AS potencia_promedio
FROM Autos_Hiperdeportivos_06 ah
INNER JOIN pais_origen po
    ON ah.id_pais_origen = po.id_pais
GROUP BY po.nombre_pais
ORDER BY total_autos DESC, mayor_velocidad DESC;

