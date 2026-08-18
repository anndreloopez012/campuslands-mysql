USE campuslands_mysql;

-- 1. RANK de jugadores por daño total infligido (todos los duelos)
WITH danio_total AS (
  SELECT jugador, SUM(danio_infligido) AS danio_total
  FROM duelos_jefe_avanzado
  GROUP BY jugador
)
SELECT jugador, danio_total,
       RANK() OVER (ORDER BY danio_total DESC) AS posicion
FROM danio_total;

-- 2. Mejor intento (mayor daño) de cada jugador contra cada jefe (ROW_NUMBER + particion)
SELECT jugador, jefe, danio_infligido, resultado, fecha
FROM (
  SELECT *,
         ROW_NUMBER() OVER (PARTITION BY jugador, jefe ORDER BY danio_infligido DESC) AS rn
  FROM duelos_jefe_avanzado
) t
WHERE rn = 1
ORDER BY jugador, jefe;

-- 3. Daño acumulado por jugador a lo largo del tiempo (suma corrida)
SELECT jugador, jefe, fecha, danio_infligido,
       SUM(danio_infligido) OVER (
         PARTITION BY jugador ORDER BY fecha
         ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
       ) AS danio_acumulado
FROM duelos_jefe_avanzado
ORDER BY jugador, fecha;

-- 4. Comparacion de duracion contra el intento anterior del mismo jugador (LAG)
SELECT jugador, jefe, fecha, duracion_seg,
       LAG(duracion_seg) OVER (PARTITION BY jugador ORDER BY fecha) AS duracion_intento_anterior,
       duracion_seg - LAG(duracion_seg) OVER (PARTITION BY jugador ORDER BY fecha) AS diferencia_segundos
FROM duelos_jefe_avanzado
ORDER BY jugador, fecha;

-- 5. Cuartiles de duelos segun el daño infligido (NTILE)
SELECT jugador, jefe, danio_infligido,
       NTILE(4) OVER (ORDER BY danio_infligido) AS cuartil
FROM duelos_jefe_avanzado
ORDER BY danio_infligido;

-- 6. Promedio movil de daño en los ultimos 2 intentos de cada jugador
SELECT jugador, jefe, fecha, danio_infligido,
       ROUND(AVG(danio_infligido) OVER (
         PARTITION BY jugador ORDER BY fecha
         ROWS BETWEEN 1 PRECEDING AND CURRENT ROW
       ), 1) AS promedio_movil_2_intentos
FROM duelos_jefe_avanzado
ORDER BY jugador, fecha;
