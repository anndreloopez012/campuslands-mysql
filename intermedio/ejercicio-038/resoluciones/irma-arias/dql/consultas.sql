USE futbol_sala_3fn_db;

-- 1. Listar todos los jugadores con su equipo, sede, posición táctica y goles anotados bajo la estructura 3FN
SELECT j.nombre_jugador, j.dorsal, e.nombre_equipo, s.nombre_ciudad, s.nombre_coliseo, p.nombre_posicion, j.goles_anotados, j.estado_jugador
FROM jugadores_sala j
JOIN equipos_sala e ON j.id_equipo = e.id_equipo
JOIN sedes_ciudades s ON e.id_sede = s.id_sede
JOIN posiciones_juego p ON j.id_posicion = p.id_posicion
ORDER BY j.goles_anotados DESC;

-- 2. Análisis agrupado por equipo: Calcular el total de goles anotados y el promedio de goles por jugador en cada plantilla
SELECT e.nombre_equipo, s.nombre_ciudad, COUNT(j.id_jugador) AS total_jugadores, SUM(j.goles_anotados) AS goles_totales_equipo, AVG(j.goles_anotados) AS promedio_goles_jugador
FROM equipos_sala e
JOIN sedes_ciudades s ON e.id_sede = s.id_sede
JOIN jugadores_sala j ON e.id_equipo = j.id_equipo
GROUP BY e.id_equipo, e.nombre_equipo, s.nombre_ciudad
ORDER BY goles_totales_equipo DESC;

-- 3. Análisis agrupado por posición táctica: Evaluar qué posición acumula más anotaciones en la liga de fútbol sala
SELECT p.nombre_posicion, p.descripcion_tactica, COUNT(j.id_jugador) AS cantidad_jugadores_posicion, SUM(j.goles_anotados) AS total_goles_posicion
FROM posiciones_juego p
JOIN jugadores_sala j ON p.id_posicion = j.id_posicion
GROUP BY p.id_posicion, p.nombre_posicion, p.descripcion_tactica
ORDER BY total_goles_posicion DESC;

-- 4. Filtrar jugadores cuyo estado sea 'activo' y que hayan anotado 5 o más goles en la temporada
SELECT j.nombre_jugador, e.nombre_equipo, p.nombre_posicion, j.goles_anotados, j.estado_jugador
FROM jugadores_sala j
JOIN equipos_sala e ON j.id_equipo = e.id_equipo
JOIN posiciones_juego p ON j.id_posicion = p.id_posicion
WHERE j.estado_jugador = 'activo' AND j.goles_anotados >= 5
ORDER BY j.goles_anotados DESC;

-- 5. Ranking TOP 3 de los máximos goleadores del torneo de fútbol sala integrando datos completos de sus clubes y sedes
SELECT j.nombre_jugador, j.dorsal, e.nombre_equipo, s.nombre_ciudad, j.goles_anotados
FROM jugadores_sala j
JOIN equipos_sala e ON j.id_equipo = e.id_equipo
JOIN sedes_ciudades s ON e.id_sede = s.id_sede
ORDER BY j.goles_anotados DESC
LIMIT 3;
