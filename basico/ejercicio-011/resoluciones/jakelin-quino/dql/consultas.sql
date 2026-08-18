-- 1. Ver todos los jugadores válidos
SELECT * FROM `ejercicio-011-bas-jugadores`;

-- 2. Ver estructura de tabla con validaciones
SHOW CREATE TABLE `ejercicio-011-bas-jugadores`;

-- 3. Jugadores por nivel
SELECT nivel, COUNT(*) AS total, AVG(puntaje) AS promedio_puntaje
FROM `ejercicio-011-bas-jugadores`
GROUP BY nivel;

-- 4. Jugadores con más victorias que derrotas
SELECT nombre, victorias, derrotas, (victorias - derrotas) AS diferencia
FROM `ejercicio-011-bas-jugadores`
WHERE victorias > derrotas
ORDER BY diferencia DESC;

-- 5. Estadísticas generales
SELECT 
    COUNT(*) AS total_jugadores,
    AVG(edad) AS edad_promedio,
    AVG(puntaje) AS puntaje_promedio,
    SUM(partidos) AS total_partidos,
    SUM(victorias) AS total_victorias
FROM `ejercicio-011-bas-jugadores`;