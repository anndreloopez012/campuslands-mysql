-- 1. Ver todos los jugadores
SELECT * FROM `ejercicio-011-int-jugadores`;

-- 2. Ver estructura y restricciones
SHOW CREATE TABLE `ejercicio-011-int-jugadores`;

-- 3. Estadísticas por nivel (solo datos válidos)
SELECT nivel, 
       COUNT(*) AS total,
       AVG(puntaje) AS promedio_puntaje,
       AVG(edad) AS promedio_edad
FROM `ejercicio-011-int-jugadores`
GROUP BY nivel
ORDER BY promedio_puntaje DESC;

-- 4. Verificar integridad (victorias + derrotas <= partidos)
SELECT nombre, partidos, victorias, derrotas,
       (victorias + derrotas) AS total_partidos_jugados
FROM `ejercicio-011-int-jugadores`
WHERE victorias + derrotas <= partidos;

-- 5. Mejores jugadores por porcentaje de victorias
SELECT nombre, 
       victorias, 
       partidos,
       ROUND((victorias / partidos) * 100, 2) AS porcentaje_victorias
FROM `ejercicio-011-int-jugadores`
ORDER BY porcentaje_victorias DESC;