-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT * FROM intermedio_ejercicio_029;

SELECT categoria, COUNT(*) AS total_registros, AVG(puntaje) AS promedio
FROM intermedio_ejercicio_029
GROUP BY categoria
ORDER BY promedio DESC;
SELECT 
    id, 
    titulo, 
    categoria, 
    MATCH(titulo) AGAINST('Minecraft' IN NATURAL LANGUAGE MODE) AS relevancia
FROM transmisiones
WHERE MATCH(titulo) AGAINST('Minecraft' IN NATURAL LANGUAGE MODE);