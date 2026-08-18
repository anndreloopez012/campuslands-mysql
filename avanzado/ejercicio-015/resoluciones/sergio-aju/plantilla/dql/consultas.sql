-- Consultas optimizadas para la biblioteca gamer.
USE campuslands_mysql;

-- Consulta 1: Vista general de todos los registros
SELECT * FROM avanzado_ejercicio_015;


-- Consulta 2: Resumen agrupado por categoría (heredado de la estructura base)
SELECT categoria, COUNT(*) AS total_registros, AVG(puntaje) AS promedio
FROM avanzado_ejercicio_015
GROUP BY categoria
ORDER BY promedio DESC;


-- Consulta 3: Consulta optimizada con filtros indexados y alias claros
SELECT 
    nombre,
    categoria,
    puntaje
FROM avanzado_ejercicio_015
WHERE estado = 'activo' AND puntaje >= 90.00
ORDER BY puntaje DESC;


-- Consulta 4: Análisis del plan de ejecución (EXPLAIN) para verificar el uso de índices
EXPLAIN 
SELECT nombre, categoria, puntaje 
FROM avanzado_ejercicio_015 
WHERE categoria = 'RPG' AND estado = 'activo';


-- Consulta 5: Consulta de ranking (Top 5 videojuegos mejor valorados) utilizando índices de ordenamiento
SELECT 
    nombre,
    categoria,
    puntaje,
    estado
FROM avanzado_ejercicio_015
WHERE estado = 'activo'
ORDER BY puntaje DESC
LIMIT 5;