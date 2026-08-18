-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT * FROM avanzado_ejercicio_027;

SELECT categoria, COUNT(*) AS total_registros, AVG(puntaje) AS promedio
FROM avanzado_ejercicio_027
GROUP BY categoria
ORDER BY promedio DESC;
