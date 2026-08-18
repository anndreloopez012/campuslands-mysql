-- Consultas base. Completa o reemplaza segun el enunciado.
-- Archivo: dql/consultas.sql
-- Descripción: Consultas para obtener información del sistema de ranking de Battle Royale.

USE ranking_br;

-- 1. Ranking de jugadores por puntaje total (Top 5)
-- Muestra los 5 jugadores con el mayor puntaje acumulado en todas sus partidas.
SELECT
    j.nickname AS NombreJugador,
    j.region AS Region,
    SUM(ep.puntaje_partida) AS PuntajeTotal
FROM
    jugadores j
JOIN
    estadisticas_partida ep ON j.id_jugador = ep.id_jugador
GROUP BY
    j.id_jugador, j.nickname, j.region
ORDER BY
    PuntajeTotal DESC
LIMIT 5;

-- 2. Estadísticas promedio de KDA (Kills, Deaths, Assists) por jugador
-- Calcula el promedio de kills, deaths y assists para cada jugador activo.
SELECT
    j.nickname AS NombreJugador,
    AVG(ep.kills) AS KillsPromedio,
    AVG(ep.deaths) AS DeathsPromedio,
    AVG(ep.asistencias) AS AsistenciasPromedio
FROM
    jugadores j
JOIN
    estadisticas_partida ep ON j.id_jugador = ep.id_jugador
WHERE
    j.estado = 'Activo'
GROUP BY
    j.id_jugador, j.nickname
ORDER BY
    KillsPromedio DESC;

-- 3. Partidas jugadas por mapa y duración promedio
-- Muestra cuántas partidas se han jugado en cada mapa y la duración promedio de esas partidas.
SELECT
    p.mapa AS NombreMapa,
    COUNT(p.id_partida) AS TotalPartidas,
    AVG(p.duracion_minutos) AS DuracionPromedioMinutos
FROM
    partidas p
GROUP BY
    p.mapa
ORDER BY
    TotalPartidas DESC;

-- 4. Jugadores con la mejor posición final promedio (Top 3)
-- Identifica a los 3 jugadores con la mejor posición final promedio (menor número es mejor).
SELECT
    j.nickname AS NombreJugador,
    AVG(ep.posicion_final) AS PosicionFinalPromedio
FROM
    jugadores j
JOIN
    estadisticas_partida ep ON j.id_jugador = ep.id_jugador
GROUP BY
    j.id_jugador, j.nickname
ORDER BY
    PosicionFinalPromedio ASC
LIMIT 3;

-- 5. Historial de partidas de un jugador específico (ej. 'ShadowHunter')
-- Muestra todas las partidas jugadas por 'ShadowHunter' con sus estadísticas detalladas.
SELECT
    j.nickname AS Jugador,
    p.fecha_partida AS FechaPartida,
    p.mapa AS Mapa,
    ep.kills AS Kills,
    ep.deaths AS Deaths,
    ep.asistencias AS Asistencias,
    ep.dano_infligido AS DanoInfligido,
    ep.posicion_final AS PosicionFinal,
    ep.puntaje_partida AS Puntaje
FROM
    jugadores j
JOIN
    estadisticas_partida ep ON j.id_jugador = ep.id_jugador
JOIN
    partidas p ON ep.id_partida = p.id_partida
WHERE
    j.nickname = 'ShadowHunter'
ORDER BY
    p.fecha_partida DESC;

-- 6. Jugadores con más de X kills en una sola partida (ej. más de 5 kills)
-- Lista los jugadores que han logrado más de 5 kills en al menos una partida.
SELECT DISTINCT
    j.nickname AS JugadorConMuchasKills,
    ep.kills AS KillsEnPartida,
    p.mapa AS Mapa,
    p.fecha_partida AS FechaPartida
FROM
    jugadores j
JOIN
    estadisticas_partida ep ON j.id_jugador = ep.id_jugador
JOIN
    partidas p ON ep.id_partida = p.id_partida
WHERE
    ep.kills > 5
ORDER BY
    ep.kills DESC;
