USE campuslands_mysql;

-- 1. Reporte resumen por jugador: sesiones, tiempo total y promedio de enemigos derrotados
SELECT jugador,
       COUNT(*) AS total_partidas,
       SUM(duracion_min) AS minutos_totales,
       AVG(enemigos_derrotados) AS promedio_enemigos_derrotados
FROM partidas_heroe_intermedio
GROUP BY jugador
ORDER BY minutos_totales DESC;

-- 2. Reporte con ROLLUP: enemigos derrotados por dificultad, con el total general
SELECT
  COALESCE(dificultad, 'TOTAL GENERAL') AS dificultad,
  SUM(enemigos_derrotados) AS enemigos_derrotados
FROM partidas_heroe_intermedio
GROUP BY dificultad WITH ROLLUP;

-- 3. Ratio enemigos derrotados / muertes por jugador (mientras mas alto, mejor desempeño)
SELECT jugador,
       SUM(enemigos_derrotados) AS enemigos_derrotados,
       SUM(muertes) AS muertes,
       ROUND(SUM(enemigos_derrotados) / NULLIF(SUM(muertes), 0), 2) AS ratio_derrotas_muertes
FROM partidas_heroe_intermedio
GROUP BY jugador
ORDER BY ratio_derrotas_muertes DESC;

-- 4. Reporte mensual de tiempo jugado (todos los jugadores)
SELECT MONTHNAME(fecha_partida) AS mes, SUM(duracion_min) AS minutos_jugados
FROM partidas_heroe_intermedio
GROUP BY MONTH(fecha_partida), MONTHNAME(fecha_partida)
ORDER BY MONTH(fecha_partida);

-- 5. Porcentaje de partidas sin ninguna muerte, sobre el total de partidas
SELECT
  COUNT(*) AS total_partidas,
  SUM(CASE WHEN muertes = 0 THEN 1 ELSE 0 END) AS partidas_sin_muertes,
  ROUND(SUM(CASE WHEN muertes = 0 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) AS porcentaje_sin_muertes
FROM partidas_heroe_intermedio;

-- 6. Ranking de jugadores por tiempo total jugado
SELECT jugador, minutos_totales,
       (SELECT COUNT(DISTINCT r.jugador)
        FROM (
          SELECT jugador, SUM(duracion_min) AS minutos_totales
          FROM partidas_heroe_intermedio
          GROUP BY jugador
        ) r
        WHERE r.minutos_totales > resumen.minutos_totales) + 1 AS posicion
FROM (
  SELECT jugador, SUM(duracion_min) AS minutos_totales
  FROM partidas_heroe_intermedio
  GROUP BY jugador
) resumen
ORDER BY posicion;
