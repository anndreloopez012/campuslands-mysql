-- 1. Ver todas las canciones
SELECT * FROM `ejercicio-012-bas-canciones`;

-- 2. Canciones por género
SELECT genero, COUNT(*) AS total, AVG(calificacion) AS promedio
FROM `ejercicio-012-bas-canciones`
GROUP BY genero
ORDER BY promedio DESC;

-- 3. Canciones más reproducidas
SELECT titulo, artista, reproducciones, calificacion
FROM `ejercicio-012-bas-canciones`
ORDER BY reproducciones DESC
LIMIT 5;

-- 4. Canciones con mejor calificación
SELECT titulo, artista, calificacion, año
FROM `ejercicio-012-bas-canciones`
WHERE calificacion >= 4.70
ORDER BY calificacion DESC;

-- 5. Estadísticas generales
SELECT 
    COUNT(*) AS total_canciones,
    AVG(duracion) AS duracion_promedio,
    AVG(reproducciones) AS reproducciones_promedio,
    AVG(calificacion) AS calificacion_promedio,
    MIN(año) AS año_mas_antiguo,
    MAX(año) AS año_mas_reciente
FROM `ejercicio-012-bas-canciones`;