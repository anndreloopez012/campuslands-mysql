USE db_hiperdeportivos_1fn;

SELECT 
    h.marca, 
    h.modelo, 
    c.tipo_caracteristica, 
    c.valor
FROM hiperdeportivos h
JOIN caracteristicas_tecnicas c ON h.id_auto = c.id_auto;

SELECT 
    h.marca, 
    h.modelo, 
    SUM(m.costo) AS costo_total_mantenimiento
FROM hiperdeportivos h
JOIN mantenimientos m ON h.id_auto = m.id_auto
GROUP BY h.id_auto, h.marca, h.modelo;

SELECT 
    h.marca, 
    h.modelo, 
    h.pais_origen
FROM hiperdeportivos h
WHERE h.pais_origen = 'Francia';