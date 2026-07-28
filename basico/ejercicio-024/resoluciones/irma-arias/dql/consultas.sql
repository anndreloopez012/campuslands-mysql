USE db_soldadura_industrial_irma;

-- Consulta 1: Listado oficial de trabajos vigentes ordenados de mayor a menor espesor
SELECT 
    id AS CodigoTrabajo, 
    codigo_pieza AS PiezaIndustrial, 
    proceso_soldadura AS Proceso, 
    espesor_mm AS EspesorMm, 
    amperaje AS AmperajeAjustado, 
    estado_inspeccion AS Estado
FROM trabajos_soldadura
ORDER BY espesor_mm DESC;

-- Consulta 2: Trabajos aprobados filtrados por proceso de soldadura de alta resistencia (SMAW o SAW)
SELECT 
    codigo_pieza AS PiezaEstructural, 
    proceso_soldadura AS Proceso, 
    espesor_mm AS EspesorMm, 
    amperaje AS Amperaje
FROM trabajos_soldadura
WHERE proceso_soldadura IN ('SMAW', 'SAW') AND estado_inspeccion = 'Aprobado';

-- Consulta 3: Resumen y métricas de amperaje promedio agrupadas por estado de inspección
SELECT 
    estado_inspeccion AS EstadoInspeccion, 
    COUNT(*) AS TotalPiezasVigentes, 
    AVG(amperaje) AS AmperajePromedio, 
    MAX(espesor_mm) AS EspesorMaximoMm
FROM trabajos_soldadura
GROUP BY estado_inspeccion;

-- Consulta 4: Top 3 de piezas con mayor amperaje utilizado en los procesos de soldadura actuales
SELECT 
    codigo_pieza AS PiezaIndustrial, 
    proceso_soldadura AS Proceso, 
    amperaje AS AmperajeUtilizado, 
    estado_inspeccion AS Estado
FROM trabajos_soldadura
ORDER BY amperaje DESC
LIMIT 3;

-- Consulta 5: Trabajos que se encuentran actualmente pendientes de inspección técnica
SELECT 
    codigo_pieza AS PiezaPendiente, 
    proceso_soldadura AS Proceso, 
    espesor_mm AS EspesorMm, 
    amperaje AS Amperaje
FROM trabajos_soldadura
WHERE estado_inspeccion = 'Pendiente'
ORDER BY espesor_mm ASC;