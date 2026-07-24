-- DQL: Consultas SELECT y reportes de negocio para el taller mecánico
USE db_taller_mecanico;

-- Consulta 1: Top 5 de órdenes con mayor costo total (mano de obra + repuestos)
SELECT 
    codigo_orden AS Codigo,
    cliente AS Cliente,
    moto_modelo AS Moto,
    (costo_mano_obra + costo_repuestos) AS Costo_Total_USD
FROM ordenes_reparacion
ORDER BY Costo_Total_USD DESC
LIMIT 5;

-- Consulta 2: Resumen financiero y promedio agrupado por estado de la orden
SELECT 
    estado AS Estado_Orden,
    COUNT(*) AS Total_Ordenes,
    SUM(costo_mano_obra + costo_repuestos) AS Ingresos_Estimados_Totales,
    AVG(costo_repuestos) AS Promedio_Repuestos
FROM ordenes_reparacion
GROUP BY estado
ORDER BY Total_Ordenes DESC;

-- Consulta 3: Listado de órdenes filtradas por servicios que superen los 100 USD en repuestos
SELECT 
    codigo_orden AS Codigo,
    cliente AS Cliente,
    moto_modelo AS Moto,
    tipo_servicio AS Servicio,
    costo_repuestos AS Repuestos_USD
FROM ordenes_reparacion
WHERE costo_repuestos > 100.00
ORDER BY costo_repuestos DESC;

-- Consulta 4: Conteo y costo acumulado de mano de obra según el tipo de servicio prestado
SELECT 
    tipo_servicio AS Tipo_Servicio,
    COUNT(*) AS Cantidad_Servicios,
    SUM(costo_mano_obra) AS Total_Mano_Obra
FROM ordenes_reparacion
GROUP BY tipo_servicio
ORDER BY Total_Mano_Obra DESC;

-- Consulta 5: Reporte detallado de órdenes activas o en proceso con datos del cliente y fecha
SELECT 
    codigo_orden AS Codigo,
    cliente AS Cliente,
    moto_modelo AS Motocicleta,
    tipo_servicio AS Servicio_Requerido,
    fecha_ingreso AS Fecha_Ingreso
FROM ordenes_reparacion
WHERE estado IN ('pendiente', 'en_proceso')
ORDER BY fecha_ingreso ASC;