-- 1. CTE simple: jugadores con buen rendimiento
WITH mejores AS (
    SELECT nombre, nivel, puntaje, victorias, partidos
    FROM `ejercicio-011-adv-jugadores`
    WHERE puntaje > 2000
)
SELECT * FROM mejores ORDER BY puntaje DESC;

-- 2. CTE con cálculos: porcentaje de victorias
WITH estadisticas AS (
    SELECT nombre, nivel, 
           victorias, partidos,
           ROUND((victorias / partidos) * 100, 2) AS porcentaje
    FROM `ejercicio-011-adv-jugadores`
)
SELECT * FROM estadisticas 
WHERE porcentaje > 60 
ORDER BY porcentaje DESC;

-- 3. CTE múltiple: promedio por nivel
WITH promedios AS (
    SELECT nivel, AVG(puntaje) AS promedio
    FROM `ejercicio-011-adv-jugadores`
    GROUP BY nivel
),
mejores_nivel AS (
    SELECT nombre, nivel, puntaje
    FROM `ejercicio-011-adv-jugadores`
    WHERE puntaje > (SELECT AVG(puntaje) FROM `ejercicio-011-adv-jugadores`)
)
SELECT m.nombre, m.nivel, m.puntaje, p.promedio
FROM mejores_nivel m
JOIN promedios p ON m.nivel = p.nivel
ORDER BY m.puntaje DESC;

-- 4. CTE con ranking: top 3 por nivel
WITH ranking AS (
    SELECT nombre, nivel, puntaje,
           ROW_NUMBER() OVER (PARTITION BY nivel ORDER BY puntaje DESC) AS posicion
    FROM `ejercicio-011-adv-jugadores`
)
SELECT * FROM ranking WHERE posicion <= 3;

-- 5. CTE recursiva (ejemplo simple)
WITH RECURSIVE numeros AS (
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1 FROM numeros WHERE n < 5
)
SELECT * FROM numeros;