-- funcionalidades/ejercicio-010 - maria-montepeque
USE campuslands_mysql;

-- 1. ROW_NUMBER() particionado por destino: numera las reservas de cada
-- destino de mayor a menor costo. A diferencia de GROUP BY, no colapsa filas.
SELECT
    d.nombre AS destino,
    r.viajero,
    r.costo_total,
    ROW_NUMBER() OVER (PARTITION BY r.destino_id ORDER BY r.costo_total DESC) AS puesto_en_destino
FROM reservas_viaje r
    INNER JOIN destinos_turisticos d ON d.id = r.destino_id
ORDER BY d.nombre, puesto_en_destino;

-- 2. "Top-N por grupo" usando el ROW_NUMBER() anterior en una CTE: la reserva
-- de MAYOR costo de cada destino (patron que un GROUP BY simple no resuelve
-- porque necesitaria una subconsulta correlacionada aparte).
WITH ranking_destino AS (
    SELECT
        d.nombre AS destino,
        r.viajero,
        r.costo_total,
        ROW_NUMBER() OVER (PARTITION BY r.destino_id ORDER BY r.costo_total DESC) AS puesto_en_destino
    FROM reservas_viaje r
        INNER JOIN destinos_turisticos d ON d.id = r.destino_id
)
SELECT destino, viajero, costo_total
FROM ranking_destino
WHERE puesto_en_destino = 1
ORDER BY costo_total DESC;

-- 3. RANK() vs DENSE_RANK() a nivel global: 'Carlos Mora' y 'Luis Prada'
-- empatan en costo_total (1500.00). RANK() salta el siguiente numero
-- (deja un hueco), DENSE_RANK() no.
SELECT
    viajero,
    costo_total,
    RANK() OVER (ORDER BY costo_total DESC) AS puesto_rank,
    DENSE_RANK() OVER (ORDER BY costo_total DESC) AS puesto_dense_rank
FROM reservas_viaje
ORDER BY costo_total DESC;

-- 4. SUM() como acumulado (running total): ingresos acumulados por destino,
-- reserva por reserva, en orden de fecha.
SELECT
    d.nombre AS destino,
    r.fecha_reserva,
    r.costo_total,
    SUM(r.costo_total) OVER (
        PARTITION BY r.destino_id
        ORDER BY r.fecha_reserva
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS acumulado_destino
FROM reservas_viaje r
    INNER JOIN destinos_turisticos d ON d.id = r.destino_id
ORDER BY d.nombre, r.fecha_reserva;

-- 5. LAG(): compara cada reserva de un destino con la anterior (misma
-- particion, ordenada por fecha) para ver cuantos dias pasaron entre una
-- reserva y la siguiente del mismo destino.
SELECT
    d.nombre AS destino,
    r.viajero,
    r.fecha_reserva,
    LAG(r.fecha_reserva) OVER (PARTITION BY r.destino_id ORDER BY r.fecha_reserva) AS reserva_anterior,
    DATEDIFF(
        r.fecha_reserva,
        LAG(r.fecha_reserva) OVER (PARTITION BY r.destino_id ORDER BY r.fecha_reserva)
    ) AS dias_desde_reserva_anterior
FROM reservas_viaje r
    INNER JOIN destinos_turisticos d ON d.id = r.destino_id
ORDER BY d.nombre, r.fecha_reserva;

-- 6. AVG() particionado por categoria de destino: compara cada reserva contra
-- el promedio de SU categoria (Playa, Montana, Cultural, Ciudad) sin perder
-- el detalle de cada fila, algo que GROUP BY no puede hacer en una sola consulta.
SELECT
    d.categoria,
    d.nombre AS destino,
    r.viajero,
    r.costo_total,
    ROUND(AVG(r.costo_total) OVER (PARTITION BY d.categoria), 2) AS promedio_categoria,
    ROUND(r.costo_total - AVG(r.costo_total) OVER (PARTITION BY d.categoria), 2) AS diferencia_vs_promedio
FROM reservas_viaje r
    INNER JOIN destinos_turisticos d ON d.id = r.destino_id
ORDER BY d.categoria, diferencia_vs_promedio DESC;
