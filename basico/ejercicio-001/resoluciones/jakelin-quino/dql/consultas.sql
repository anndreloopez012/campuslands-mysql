-- 1. Mostrar todos los jugadores ordenados por kills (mayor a menor)
SELECT nombre_jugador, nombre_equipo, kills 
FROM ejercicio-001-basico 
ORDER BY kills DESC;

-- 2. Ver el promedio de KDA (Kills+Assists/Deaths) por equipo
SELECT nombre_equipo, 
       AVG(kills) AS avg_kills,
       AVG(assists) AS avg_assists,
       AVG(deaths) AS avg_deaths,
       COUNT(*) AS total_jugadores
FROM ejercicio-001-basico 
GROUP BY nombre_equipo;

-- 3. Jugadores con más de 100 kills y KDA mayor a 3.0
SELECT nombre_jugador, nombre_equipo, kills, assists, deaths,
       ROUND((kills + assists) / NULLIF(deaths, 0), 2) AS kda
FROM ejercicio-001-basico 
WHERE kills > 100 
  AND (kills + assists) / NULLIF(deaths, 0) > 3.0
ORDER BY kda DESC;

-- 4. Contar cuántos jugadores hay por rol
SELECT rol_jugador, COUNT(*) AS total
FROM ejercicio-001-basico 
GROUP BY rol_jugador 
ORDER BY total DESC;