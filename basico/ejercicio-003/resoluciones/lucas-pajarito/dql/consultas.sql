-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT * FROM basico_ejercicio_003;

SELECT skin, COUNT(*) AS total_registros
FROM skin
GROUP BY skin
ORDER BY total_registros DESC;