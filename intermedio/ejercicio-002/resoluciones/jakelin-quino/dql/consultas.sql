-- 1. Todos los jugadores con su equipo (incluye sin equipo)
SELECT j.nick, j.puntaje, e.nombre AS equipo
FROM `ejercicio-002-int-jugadores` j
LEFT JOIN `ejercicio-002-int-equipos` e ON j.equipo = e.id;

-- 2. Equipos con cantidad de jugadores
SELECT e.nombre, COUNT(j.id) AS total
FROM `ejercicio-002-int-equipos` e
LEFT JOIN `ejercicio-002-int-jugadores` j ON e.id = j.equipo
GROUP BY e.id, e.nombre;

-- 3. Jugadores sin equipo (NULL)
SELECT nick, puntaje FROM `ejercicio-002-int-jugadores` 
WHERE equipo IS NULL;

-- 4. Equipos sin jugadores
SELECT e.nombre FROM `ejercicio-002-int-equipos` e
LEFT JOIN `ejercicio-002-int-jugadores` j ON e.id = j.equipo
WHERE j.id IS NULL;

-- 5. Promedio de puntaje por equipo (incluye equipos vacíos)
SELECT e.nombre, AVG(j.puntaje) AS promedio
FROM `ejercicio-002-int-equipos` e
LEFT JOIN `ejercicio-002-int-jugadores` j ON e.id = j.equipo
GROUP BY e.id, e.nombre;