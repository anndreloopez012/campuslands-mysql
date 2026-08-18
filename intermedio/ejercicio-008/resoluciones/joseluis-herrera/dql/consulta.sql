SELECT 
    j.nombre AS jugador,
    j.posicion,
    e.nombre_equipo,
    e.ciudad AS ciudad_equipo,
    j.goles_anotados
FROM jugadores j
JOIN equipos_sala e ON j.id_equipo = e.id_equipo
ORDER BY j.goles_anotados DESC;

SELECT 
    e.nombre_equipo,
    COUNT(j.id_jugador) AS total_jugadores_plantilla,
    SUM(j.goles_anotados) AS suma_goles_jugadores,
    e.goles_favor AS goles_oficiales_equipo
FROM equipos_sala e
LEFT JOIN jugadores j ON e.id_equipo = j.id_equipo
GROUP BY e.id_equipo, e.nombre_equipo, e.goles_favor;