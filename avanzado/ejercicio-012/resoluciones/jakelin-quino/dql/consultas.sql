-- 1. Ranking de canciones por reproducciones
SELECT titulo, artista, reproducciones,
       ROW_NUMBER() OVER (ORDER BY reproducciones DESC) AS ranking
FROM `ejercicio-012-adv-canciones`;

-- 2. Ranking por género (partición)
SELECT titulo, artista, genero, reproducciones,
       ROW_NUMBER() OVER (PARTITION BY genero ORDER BY reproducciones DESC) AS ranking_genero
FROM `ejercicio-012-adv-canciones`;

-- 3. Calificación comparada con el promedio
SELECT titulo, artista, genero, calificacion,
       AVG(calificacion) OVER (PARTITION BY genero) AS promedio_genero,
       calificacion - AVG(calificacion) OVER (PARTITION BY genero) AS diferencia
FROM `ejercicio-012-adv-canciones`
ORDER BY genero, calificacion DESC;

-- 4. Top 3 por género
WITH ranking AS (
    SELECT titulo, artista, genero, reproducciones,
           ROW_NUMBER() OVER (PARTITION BY genero ORDER BY reproducciones DESC) AS posicion
    FROM `ejercicio-012-adv-canciones`
)
SELECT * FROM ranking WHERE posicion <= 3;

-- 5. Estadísticas acumuladas
SELECT titulo, artista, año, reproducciones,
       SUM(reproducciones) OVER (ORDER BY año) AS acumulado_por_año,
       ROUND(AVG(reproducciones) OVER (ORDER BY año ROWS BETWEEN 2 PRECEDING AND CURRENT ROW), 0) AS promedio_movil
FROM `ejercicio-012-adv-canciones`
ORDER BY año;