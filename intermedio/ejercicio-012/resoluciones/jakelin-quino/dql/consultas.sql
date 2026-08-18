-- 1. Reporte: Resumen por género
SELECT 
    genero,
    COUNT(*) AS total_canciones,
    AVG(reproducciones) AS promedio_reproducciones,
    AVG(calificacion) AS promedio_calificacion,
    SUM(reproducciones) AS total_reproducciones
FROM `ejercicio-012-int-canciones`
GROUP BY genero
ORDER BY total_reproducciones DESC;

-- 2. Reporte: Canciones por década
SELECT 
    FLOOR(año/10)*10 AS decada,
    COUNT(*) AS total_canciones,
    AVG(reproducciones) AS promedio_reproducciones,
    MAX(calificacion) AS mejor_calificacion
FROM `ejercicio-012-int-canciones`
GROUP BY decada
ORDER BY decada;

-- 3. Reporte: Top 5 artistas con más reproducciones
SELECT 
    artista,
    COUNT(*) AS canciones,
    SUM(reproducciones) AS total_reproducciones,
    AVG(calificacion) AS promedio_calificacion
FROM `ejercicio-012-int-canciones`
GROUP BY artista
ORDER BY total_reproducciones DESC
LIMIT 5;

-- 4. Reporte: Distribución de duración
SELECT 
    CASE 
        WHEN TIME_TO_SEC(duracion) < 180 THEN 'corta (<3min)'
        WHEN TIME_TO_SEC(duracion) < 300 THEN 'media (3-5min)'
        ELSE 'larga (>5min)'
    END AS duracion_categoria,
    COUNT(*) AS total_canciones,
    AVG(calificacion) AS promedio_calificacion
FROM `ejercicio-012-int-canciones`
GROUP BY duracion_categoria;

-- 5. Reporte: Mejores canciones por género
SELECT 
    genero,
    titulo,
    artista,
    calificacion,
    reproducciones
FROM `ejercicio-012-int-canciones` t1
WHERE calificacion = (
    SELECT MAX(calificacion) 
    FROM `ejercicio-012-int-canciones` t2 
    WHERE t1.genero = t2.genero
)
ORDER BY genero;