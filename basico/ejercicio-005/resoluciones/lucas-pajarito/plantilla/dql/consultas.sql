-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT * FROM basico_ejercicio_005;

SELECT marca,dueño, COUNT(*) AS total_registros
FROM basico_ejercicio_005
GROUP BY marca, dueño
ORDER BY total_registros DESC;
