
USE db_arquitectura_3d_irma;

-- Consulta 1: Listado general de proyectos para verificar estados actualizados y presupuestos
SELECT 
    id AS CodigoProyecto, 
    nombre_proyecto AS Proyecto, 
    software_render AS Software, 
    area_construccion_m2 AS AreaM2, 
    presupuesto_usd AS PresupuestoUSD, 
    estado_proyecto AS EstadoActual
FROM proyectos_arquitectura
ORDER BY presupuesto_usd DESC;

-- Consulta 2: Proyectos filtrados que ya se encuentran en estado 'Aprobado' o 'Entregado'
SELECT 
    nombre_proyecto AS ProyectoAprobado, 
    software_render AS Software, 
    presupuesto_usd AS PresupuestoUSD, 
    estado_proyecto AS Estado
FROM proyectos_arquitectura
WHERE estado_proyecto IN ('Aprobado', 'Entregado')
ORDER BY presupuesto_usd DESC;

-- Consulta 3: Resumen y métricas de presupuesto agrupadas por estado de proyecto
SELECT 
    estado_proyecto AS EstadoProyecto, 
    COUNT(*) AS TotalProyectos, 
    SUM(area_construccion_m2) AS AreaTotalM2, 
    SUM(presupuesto_usd) AS PresupuestoAcumuladoUSD, 
    AVG(presupuesto_usd) AS PresupuestoPromedioUSD
FROM proyectos_arquitectura
GROUP BY estado_proyecto
ORDER BY PresupuestoAcumuladoUSD DESC;

-- Consulta 4: Top 3 de proyectos con mayor presupuesto asignado tras las actualizaciones
SELECT 
    nombre_proyecto AS ProyectoTop, 
    software_render AS Software, 
    area_construccion_m2 AS AreaM2, 
    presupuesto_usd AS PresupuestoUSD, 
    estado_proyecto AS Estado
FROM proyectos_arquitectura
ORDER BY presupuesto_usd DESC
LIMIT 3;

-- Consulta 5: Proyectos que continúan en fase de diseño o renderizado y requieren atención
SELECT 
    nombre_proyecto AS ProyectoEnProceso, 
    software_render AS Software, 
    estado_proyecto AS EstadoActual, 
    presupuesto_usd AS Presupuesto
FROM proyectos_arquitectura
WHERE estado_proyecto IN ('Diseño', 'Renderizado')
ORDER BY area_construccion_m2 DESC;