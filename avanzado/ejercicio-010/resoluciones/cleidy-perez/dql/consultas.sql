-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT 
    c.numero_competencia,
    c.alias AS corredor,
    c.nombre,
    v.marca,
    v.modelo,
    v.matricula
FROM Corredores c
JOIN Vehiculos v ON c.corredor_id = v.corredor_id;