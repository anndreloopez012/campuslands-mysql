-- DQL: Consultas optimizadas con uso de índices para análisis del taller mecánico
USE db_taller_motos_avanzado;

-- Consulta 1: Búsqueda acelerada por estado de orden y rango de fechas utilizando el índice compuesto
SELECT 
    codigo_orden AS Orden,
    cliente AS Cliente,
    placa_moto AS Placa,
    servicio_realizado AS Servicio,
    estado_orden AS Estado,
    fecha_servicio AS Fecha
FROM reparaciones_taller
WHERE estado_orden IN ('finalizado', 'facturado') AND fecha_servicio >= '2026-06-01'
ORDER BY fecha_servicio DESC;

-- Consulta 2: Top 5 de servicios con mayor costo de mano de obra
SELECT 
    codigo_orden AS Orden,
    cliente AS Cliente,
    servicio_realizado AS Servicio,
    costo_mano_obra AS Costo_Mano_Obra
FROM reparaciones_taller
ORDER BY costo_mano_obra DESC
LIMIT 5;

-- Consulta 3: Agrupación y estadísticas por estado de orden en el taller
SELECT 
    estado_orden AS Estado_Orden,
    COUNT(*) AS Total_Ordenes,
    AVG(costo_mano_obra) AS Promedio_Costo,
    SUM(costo_mano_obra) AS Ingresos_Totales_Estado
FROM reparaciones_taller
GROUP BY estado_orden
ORDER BY Ingresos_Totales_Estado DESC;

-- Consulta 4: Búsqueda indexada por cliente específico para historial de reparaciones
SELECT 
    codigo_orden AS Orden,
    placa_moto AS Placa,
    servicio_realizado AS Servicio,
    costo_mano_obra AS Costo,
    fecha_servicio AS Fecha
FROM reparaciones_taller
WHERE cliente = 'Carlos Pérez'
ORDER BY fecha_servicio DESC;

-- Consulta 5: Reporte de órdenes pendientes o en proceso con costos mayores a 50
SELECT 
    codigo_orden AS Orden,
    cliente AS Cliente,
    placa_moto AS Placa,
    costo_mano_obra AS Costo,
    estado_orden AS Estado
FROM reparaciones_taller
WHERE estado_orden IN ('pendiente', 'en_proceso') AND costo_mano_obra > 50.00
ORDER BY costo_mano_obra ASC;