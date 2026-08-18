SELECT
    jugador_id,
    nombre_jugador,
    nacionalidad,
    edad,
    ranking,
    partidos_ganados,
    partidos_perdidos
FROM jugadores_pingpong
WHERE edad BETWEEN 18 AND 30
ORDER BY edad ASC;

SELECT
    jugador_id,
    nombre_jugador,
    ranking,
    partidos_ganados,
    partidos_perdidos
FROM jugadores_pingpong
WHERE ranking <= 30
ORDER BY ranking ASC;

SELECT
    jugador_id,
    nombre_jugador,
    partidos_ganados,
    partidos_perdidos
FROM jugadores_pingpong
WHERE partidos_ganados > partidos_perdidos
ORDER BY partidos_ganados DESC;

SELECT
    nacionalidad,
    COUNT(*) AS cantidad_jugadores
FROM jugadores_pingpong
GROUP BY nacionalidad
ORDER BY cantidad_jugadores DESC;

SELECT
    jugador_id,
    nombre_jugador,
    edad,
    ranking,
    partidos_ganados,
    partidos_perdidos
FROM jugadores_pingpong
WHERE edad >= 25
  AND partidos_ganados >= 20
  AND partidos_perdidos <= 20
ORDER BY ranking ASC;