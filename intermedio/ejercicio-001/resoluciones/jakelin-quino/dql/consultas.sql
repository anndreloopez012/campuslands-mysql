-- Consultas con INNER JOIN

-- 1. Todos los jugadores con su equipo y entrenador
SELECT j.nombre_jugador, j.rol, e.nombre_equipo, e.entrenador
FROM ejercicio-001-jugadores j
INNER JOIN ejercicio-001-equipos e ON j.equipo_id = e.id
ORDER BY e.nombre_equipo;

-- 2. Jugadores de equipos de la región LATAM
SELECT j.nombre_jugador, e.nombre_equipo, e.region
FROM ejercicio-001-jugadores j
INNER JOIN ejercicio-001-equipos e ON j.equipo_id = e.id
WHERE e.region = 'LATAM';

-- 3. Ranking de equipos por total de kills
SELECT e.nombre_equipo, SUM(j.kills) AS total_kills
FROM ejercicio-001-equipos e
INNER JOIN ejercicio-001-jugadores j ON e.id = j.equipo_id
GROUP BY e.id
ORDER BY total_kills DESC;

-- 4. Jugadores con KDA mayor a 3.0 por equipo
SELECT e.nombre_equipo, j.nombre_jugador, j.rol,
       ROUND((j.kills + j.assists) / NULLIF(j.deaths, 0), 2) AS kda
FROM ejercicio-001-jugadores j
INNER JOIN ejercicio-001-equipos e ON j.equipo_id = e.id
WHERE (j.kills + j.assists) / NULLIF(j.deaths, 0) > 3.0
ORDER BY kda DESC;

-- 5. Top 5 jugadores con más partidas jugadas
SELECT j.nombre_jugador, e.nombre_equipo, j.partidas, j.rol
FROM ejercicio-001-jugadores j
INNER JOIN ejercicio-001-equipos e ON j.equipo_id = e.id
ORDER BY j.partidas DESC
LIMIT 5;