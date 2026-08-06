-- Consultas for basico_ejercicio_056

USE campuslands_mysql;

-- Consulta 1: Todos los activos
SELECT * FROM basico_ejercicio_056 WHERE estado = 'activo';

-- Consulta 2: Conteo por categoria
SELECT categoria, COUNT(*) as total FROM basico_ejercicio_056 GROUP BY categoria;

-- Consulta 3: Promedio de puntaje
SELECT AVG(puntaje) as promedio_total FROM basico_ejercicio_056;

-- Consulta 4: Top 3 mayores puntajes
SELECT * FROM basico_ejercicio_056 ORDER BY puntaje DESC LIMIT 3;

-- Consulta 5: Registros en revision
SELECT nombre, puntaje FROM basico_ejercicio_056 WHERE estado = 'revision';
