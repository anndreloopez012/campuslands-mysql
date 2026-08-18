-- 1. Ver todos los jugadores con su equipo y posición
SELECT j.nombre, e.nombre AS equipo, p.nombre AS posicion, j.goles
FROM `ejercicio-008-int-jugadores` j
INNER JOIN `ejercicio-008-int-equipos` e ON j.equipo_id = e.id
INNER JOIN `ejercicio-008-int-posiciones` p ON j.posicion_id = p.id;

-- 2. Jugadores con su entrenador
SELECT j.nombre, e.nombre AS equipo, e.entrenador, j.estado
FROM `ejercicio-008-int-jugadores` j
INNER JOIN `ejercicio-008-int-equipos` e ON j.equipo_id = e.id;

-- 3. Goles por posición
SELECT p.nombre AS posicion, SUM(j.goles) AS total_goles
FROM `ejercicio-008-int-jugadores` j
INNER JOIN `ejercicio-008-int-posiciones` p ON j.posicion_id = p.id
GROUP BY p.id;

-- 4. Equipos y cantidad de jugadores
SELECT e.nombre, COUNT(j.id) AS total_jugadores
FROM `ejercicio-008-int-equipos` e
LEFT JOIN `ejercicio-008-int-jugadores` j ON e.id = j.equipo_id
GROUP BY e.id;

-- 5. Delanteros con más de 10 goles
SELECT j.nombre, e.nombre AS equipo, j.goles, j.asistencias
FROM `ejercicio-008-int-jugadores` j
INNER JOIN `ejercicio-008-int-equipos` e ON j.equipo_id = e.id
INNER JOIN `ejercicio-008-int-posiciones` p ON j.posicion_id = p.id
WHERE p.nombre = 'delantero' AND j.goles > 10
ORDER BY j.goles DESC;