USE campuslands_mysql;

-- 1. Jugadores con datos completos de su equipo (JOIN, no columnas repetidas)
SELECT j.nombre_jugador, e.nombre_equipo, e.ciudad, e.estadio
FROM futsal_jugadores_3fn j
INNER JOIN futsal_equipos_3fn e ON j.id_equipo = e.id_equipo
ORDER BY e.nombre_equipo;

-- 2. Goles totales por equipo (agregando sobre los jugadores del equipo)
SELECT e.nombre_equipo, SUM(j.goles_temporada) AS goles_totales
FROM futsal_equipos_3fn e
INNER JOIN futsal_jugadores_3fn j ON e.id_equipo = j.id_equipo
GROUP BY e.nombre_equipo
ORDER BY goles_totales DESC;

-- 3. Cambiar el estadio de un equipo (demuestra la ventaja de 3FN: un solo UPDATE)
UPDATE futsal_equipos_3fn SET estadio = 'Domo Escuintla Renovado' WHERE nombre_equipo = 'Rayo Central';

-- 4. Confirmar que el cambio se refleja automaticamente para todos los jugadores del equipo
SELECT j.nombre_jugador, e.nombre_equipo, e.estadio
FROM futsal_jugadores_3fn j
INNER JOIN futsal_equipos_3fn e ON j.id_equipo = e.id_equipo
WHERE e.nombre_equipo = 'Rayo Central';

-- 5. Jugadores sin goles en la temporada (caso limite)
SELECT j.nombre_jugador, e.nombre_equipo
FROM futsal_jugadores_3fn j
INNER JOIN futsal_equipos_3fn e ON j.id_equipo = e.id_equipo
WHERE j.goles_temporada = 0;