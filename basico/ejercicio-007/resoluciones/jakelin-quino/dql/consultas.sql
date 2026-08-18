-- 1. Equipos ordenados por puntos (mayor a menor)
SELECT equipo, puntos, ganados, perdidos 
FROM `ejercicio-007-bas-liga`
ORDER BY puntos DESC;

-- 2. Equipos por goles a favor (mayor a menor)
SELECT equipo, goles_favor, goles_contra, puntos 
FROM `ejercicio-007-bas-liga`
ORDER BY goles_favor DESC;

-- 3. Equipos por diferencia de goles (mayor a menor)
SELECT equipo, (goles_favor - goles_contra) AS diferencia, puntos 
FROM `ejercicio-007-bas-liga`
ORDER BY diferencia DESC;

-- 4. Equipos por partidos perdidos (menor a mayor)
SELECT equipo, perdidos, puntos, ganados 
FROM `ejercicio-007-bas-liga`
ORDER BY perdidos ASC;

-- 5. Equipos con más de 30 puntos ordenados por nombre
SELECT equipo, puntos, ganados, empatados 
FROM `ejercicio-007-bas-liga`
WHERE puntos > 30
ORDER BY equipo ASC;