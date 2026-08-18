-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

EXPLAIN SELECT * FROM Hiperdeportivos 
WHERE velocidad_max_kmh > 450;

EXPLAIN SELECT 
    m.nombre AS marca,
    h.modelo,
    h.potencia_hp,
    h.velocidad_max_kmh
FROM Hiperdeportivos h
JOIN Marcas m ON h.marca_id = m.marca_id
WHERE m.nombre = 'Koenigsegg';
