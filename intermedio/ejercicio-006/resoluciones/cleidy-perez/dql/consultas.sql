-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT 
    a.marca,
    a.modelo,
    a.potencia_hp,
    e.tipo_especificacion,
    e.detalle
FROM Autos a
JOIN EspecificacionesAvanzadas e ON a.auto_id = e.auto_id;