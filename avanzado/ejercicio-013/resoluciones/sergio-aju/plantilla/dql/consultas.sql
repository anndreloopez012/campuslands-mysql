-- Consultas con funciones de ventana (Window Functions) para playlist musical.
USE campuslands_mysql;

-- Consulta 1: Vista general de todos los registros de la playlist
SELECT * FROM avanzado_ejercicio_012;


-- Consulta 2: Resumen agrupado por categoría (heredado de la estructura base)
SELECT categoria, COUNT(*) AS total_registros, AVG(puntaje) AS promedio
FROM avanzado_ejercicio_012
GROUP BY categoria
ORDER BY promedio DESC;


-- Consulta 3: Uso de ROW_NUMBER() para numerar las canciones según su puntaje dentro de cada género (categoría)
SELECT 
    id,
    nombre,
    categoria,
    puntaje,
    ROW_NUMBER() OVER(PARTITION BY categoria ORDER BY puntaje DESC) AS ranking_genero
FROM avanzado_ejercicio_012;


-- Consulta 4: Uso de RANK() y DENSE_RANK() para evaluar posiciones de popularidad global en toda la playlist
SELECT 
    nombre,
    categoria,
    puntaje,
    RANK() OVER(ORDER BY puntaje DESC) AS posicion_rank,
    DENSE_RANK() OVER(ORDER BY puntaje DESC) AS posicion_dense_rank
FROM avanzado_ejercicio_012;


-- Consulta 5: Uso de funciones de ventana analíticas (AVG y SUM acumulado con ROWS BETWEEN) 
-- para comparar el puntaje de cada pista frente al promedio de su categoría
SELECT 
    nombre,
    categoria,
    puntaje,
    ROUND(AVG(puntaje) OVER(PARTITION BY categoria), 2) AS promedio_categoria,
    ROUND(SUM(puntaje) OVER(PARTITION BY categoria ORDER BY puntaje DESC), 2) AS suma_acumulada_categoria
FROM avanzado_ejercicio_012;