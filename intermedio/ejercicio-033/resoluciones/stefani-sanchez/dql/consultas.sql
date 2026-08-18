-- Consultas para intermedio_ejercicio_033
USE campuslands_mysql;

-- 1. Consultar todos los registros
SELECT * FROM intermedio_ejercicio_033;

-- 2. Conteo y promedio por categoria
SELECT categoria, COUNT(*) AS total_registros, AVG(puntaje) AS promedio
FROM intermedio_ejercicio_033
GROUP BY categoria
ORDER BY promedio DESC;

-- 3. Top 5 activos con mayor puntaje
SELECT * FROM intermedio_ejercicio_033 
WHERE estado = 'activo' 
ORDER BY puntaje DESC 
LIMIT 5;

-- 4. Registros con puntaje mayor a 50
SELECT nombre, puntaje 
FROM intermedio_ejercicio_033 
WHERE puntaje > 50;

-- 5. Puntaje minimo y maximo por estado
SELECT estado, MIN(puntaje) AS min_puntaje, MAX(puntaje) AS max_puntaje 
FROM intermedio_ejercicio_033 
GROUP BY estado;
