-- DQL: Consultas analíticas utilizando Subconsultas (Subqueries) en MySQL
USE db_taller_motos_intermedio;

-- Consulta 1: Órdenes cuyo costo de mano de obra sea superior al promedio general del taller
SELECT 
    codigo_orden AS Orden,
    cliente AS Cliente,
    servicio_realizado AS Servicio,
    costo_mano_obra AS Costo
FROM ordenes_taller
WHERE costo_mano_obra > (SELECT AVG(costo_mano_obra) FROM ordenes_taller)
ORDER BY costo_mano_obra DESC;

-- Consulta 2: Órdenes asociadas al cliente que registra el mayor costo en una sola reparación
SELECT 
    codigo_orden AS Orden,
    cliente AS Cliente,
    placa_moto AS Placa,
    servicio_realizado AS Servicio,
    costo_mano_obra AS Costo
FROM ordenes_taller
WHERE cliente = (
    SELECT cliente 
    FROM ordenes_taller 
    ORDER BY costo_mano_obra DESC 
    LIMIT 1
);

-- Consulta 3: Listar las órdenes cuyos costos coincidan con los valores más altos (usando IN y subconsulta)
SELECT 
    codigo_orden AS Orden,
    cliente AS Cliente,
    costo_mano_obra AS Costo,
    estado_orden AS Estado
FROM ordenes_taller
WHERE costo_mano_obra IN (
    SELECT costo_mano_obra 
    FROM ordenes_taller 
    ORDER BY costo_mano_obra DESC 
    LIMIT 3
)
ORDER BY costo_mano_obra DESC;

-- Consulta 4: Columna calculada con subconsulta escalar para mostrar la diferencia respecto al costo promedio
SELECT 
    codigo_orden AS Orden,
    cliente AS Cliente,
    costo_mano_obra AS Costo_Actual,
    (SELECT ROUND(AVG(costo_mano_obra), 2) FROM ordenes_taller) AS Promedio_Taller,
    (costo_mano_obra - (SELECT AVG(costo_mano_obra) FROM ordenes_taller)) AS Diferencia_Promedio
FROM ordenes_taller
ORDER BY Costo_Actual DESC;

-- Consulta 5: Órdenes de servicios facturados o finalizados cuyos costos superen la mediana aproximada (subconsulta de filtrado)
SELECT 
    codigo_orden AS Orden,
    cliente AS Cliente,
    servicio_realizado AS Servicio,
    costo_mano_obra AS Costo,
    estado_orden AS Estado
FROM ordenes_taller
WHERE estado_orden IN ('finalizado', 'facturado') 
  AND costo_mano_obra >= (SELECT MIN(costo_mano_obra) FROM ordenes_taller WHERE estado_orden IN ('finalizado', 'facturado'))
ORDER BY costo_mano_obra DESC;