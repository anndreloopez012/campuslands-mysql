USE db_saga_scifi_irma;

-- Consulta 1: Cronología completa de obras oficiales del canon ordenadas por fecha de lanzamiento
SELECT 
    titulo_obra AS Obra, 
    tipo_contenido AS Tipo, 
    fecha_lanzamiento AS FechaLanzamiento, 
    recaudacion_millones AS RecaudacionM
FROM entregas_scifi
WHERE estado_canon = 'Canon'
ORDER BY fecha_lanzamiento ASC;

-- Consulta 2: Obras de ciencia ficción lanzadas a partir del año 2010 (filtro temporal)
SELECT 
    titulo_obra AS ObraModerna, 
    fecha_lanzamiento AS Fecha, 
    recaudacion_millones AS Recaudacion
FROM entregas_scifi
WHERE fecha_lanzamiento >= '2010-01-01'
ORDER BY fecha_lanzamiento DESC;

-- Consulta 3: Top 3 de obras con mayor recaudación histórica de la saga
SELECT 
    titulo_obra AS ObraExitosa, 
    tipo_contenido AS Tipo, 
    recaudacion_millones AS RecaudacionMillones
FROM entregas_scifi
ORDER BY recaudacion_millones DESC
LIMIT 3;

-- Consulta 4: Conteo de entregas agrupadas por su formato o tipo de contenido
SELECT 
    tipo_contenido AS Formato, 
    COUNT(*) AS TotalObras
FROM entregas_scifi
GROUP BY tipo_contenido
ORDER BY TotalObras DESC;

-- Consulta 5: Recaudación acumulada y promedio agrupada por estado de canon
SELECT 
    estado_canon AS CanonEstado, 
    COUNT(*) AS CantidadObras, 
    SUM(recaudacion_millones) AS RecaudacionTotalM, 
    AVG(recaudacion_millones) AS RecaudacionPromedioM
FROM entregas_scifi
GROUP BY estado_canon;