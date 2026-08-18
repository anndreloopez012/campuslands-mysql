-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT 
    c.nombre_carrera,
    c.ciudad,
    COUNT(i.id_inscripcion) AS total_corredores,
    SUM(i.monto_pagado) AS total_recaudado
FROM carreras c
LEFT JOIN inscripciones i ON c.id_carrera = i.id_carrera
WHERE i.estado_pago = 'Pagado'
GROUP BY c.id_carrera, c.nombre_carrera, c.ciudad;