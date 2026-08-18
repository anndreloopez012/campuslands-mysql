-- Consultas for intermedio_ejercicio_041

USE campuslands_mysql;

-- Consulta 1: Todos los activos
SELECT * FROM intermedio_ejercicio_041 WHERE estado = 'activo';

-- Consulta 2: Conteo por categoria
SELECT categoria, COUNT(*) as total FROM intermedio_ejercicio_041 GROUP BY categoria;

-- Consulta 3: Promedio de puntaje
SELECT AVG(puntaje) as promedio_total FROM intermedio_ejercicio_041;

-- Consulta 4: Top 3 mayores puntajes
SELECT * FROM intermedio_ejercicio_041 ORDER BY puntaje DESC LIMIT 3;

-- Consulta 5: Registros en revision
SELECT nombre, puntaje FROM intermedio_ejercicio_041 WHERE estado = 'revision';
