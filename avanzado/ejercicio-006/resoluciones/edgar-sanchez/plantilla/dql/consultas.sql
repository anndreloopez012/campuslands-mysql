EXPLAIN SELECT 
    m.nombre_modelo,
    c.nombre AS constructor,
    c.pais_origen,
    e.potencia_hp,
    e.velocidad_max_kmh,
    e.tipo_propulsion,
    m.precio_base_usd
FROM modelos_hiperdeportivos m
INNER JOIN constructores c ON m.constructor_id = c.constructor_id
INNER JOIN especificaciones_tecnicas e ON m.modelo_id = e.modelo_id
WHERE e.potencia_hp >= 1600
ORDER BY e.potencia_hp DESC;

EXPLAIN SELECT 
    c.nombre AS constructor,
    COUNT(m.modelo_id) AS total_modelos,
    SUM(m.unidades_producidas) AS unidades_totales,
    AVG(e.potencia_hp) AS potencia_promedio,
    MAX(e.velocidad_max_kmh) AS velocidad_maxima_alcanzada
FROM constructores c
INNER JOIN modelos_hiperdeportivos m ON c.constructor_id = m.constructor_id
INNER JOIN especificaciones_tecnicas e ON m.modelo_id = e.modelo_id
GROUP BY c.constructor_id, c.nombre
ORDER BY velocidad_maxima_alcanzada DESC;

EXPLAIN SELECT 
    m.nombre_modelo,
    p.pista_nombre,
    p.tiempo_lap_segundos,
    e.aceleracion_0_100,
    e.tipo_propulsion
FROM pruebas_rendimiento p
INNER JOIN modelos_hiperdeportivos m ON p.modelo_id = m.modelo_id
INNER JOIN especificaciones_tecnicas e ON m.modelo_id = e.modelo_id
WHERE p.pista_nombre = 'Nürburgring Nordschleife'
ORDER BY p.tiempo_lap_segundos ASC;