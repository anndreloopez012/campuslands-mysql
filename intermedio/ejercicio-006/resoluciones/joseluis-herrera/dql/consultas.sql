EXPLAIN 
SELECT id_auto, marca, modelo, pais_origen 
FROM hiperdeportivos 
WHERE pais_origen = 'Francia';

EXPLAIN 
SELECT 
    h.marca, 
    h.modelo, 
    m.tipo_servicio, 
    m.costo
FROM hiperdeportivos h
JOIN mantenimientos m ON h.id_auto = m.id_auto
WHERE m.costo > 15000.00;

EXPLAIN 
SELECT 
    h.marca, 
    COUNT(m.id_mantenimiento) AS total_servicios,
    SUM(m.costo) AS inversion_mantenimiento
FROM hiperdeportivos h
LEFT JOIN mantenimientos m ON h.id_auto = m.id_auto
GROUP BY h.id_auto, h.marca