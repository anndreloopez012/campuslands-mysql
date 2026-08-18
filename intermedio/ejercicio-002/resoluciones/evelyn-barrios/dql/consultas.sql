-- Consultas base. Completa o reemplaza segun el enunciado.
-- dql/consultas.sql
-- Consultas para analizar el ranking del battle royale usando LEFT JOIN.

USE br_ranking_intermediate;

-- 1. Ranking completo de jugadores por puntos totales.
-- Usamos LEFT JOIN para incluir a todos los jugadores, incluso si no tienen partidas.
-- IFNULL se usa para mostrar 0 en lugar de NULL para los jugadores sin puntos.
SELECT
    j.nickname,
    IFNULL(SUM(p.puntos_obtenidos), 0) AS puntos_totales
FROM jugadores j
LEFT JOIN partidas p ON j.id = p.jugador_id
GROUP BY j.nickname
ORDER BY puntos_totales DESC;

-- 2. Listar jugadores que aún no han jugado ninguna partida.
-- Un uso clásico de LEFT JOIN es encontrar registros en una tabla que no tienen
-- correspondencia en otra.
SELECT j.nickname, j.fecha_registro
FROM jugadores j
LEFT JOIN partidas p ON j.id = p.jugador_id
WHERE p.id IS NULL;

-- 3. Conteo de partidas jugadas por cada jugador.
-- De nuevo, LEFT JOIN asegura que todos los jugadores aparezcan en la lista.
SELECT
    j.nickname,
    COUNT(p.id) AS partidas_jugadas
FROM jugadores j
LEFT JOIN partidas p ON j.id = p.jugador_id
GROUP BY j.nickname
ORDER BY partidas_jugadas DESC;

-- 4. Total de muertes (kills) por jugador.
SELECT j.nickname, IFNULL(SUM(p.muertes), 0) AS total_muertes
FROM jugadores j
LEFT JOIN partidas p ON j.id = p.jugador_id
GROUP BY j.nickname;

-- 5. Comparación con INNER JOIN: solo muestra jugadores que han jugado.
-- Esta consulta sirve para notar la diferencia con LEFT JOIN.
SELECT j.nickname, COUNT(p.id) AS partidas_jugadas
FROM jugadores j
INNER JOIN partidas p ON j.id = p.jugador_id
GROUP BY j.nickname;
