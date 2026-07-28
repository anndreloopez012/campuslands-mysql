USE db_estudio_tatuajes_irma;

-- Consulta 1: Listado general de citas completadas ordenadas por costo de mayor a menor
SELECT 
    id AS CodigoCita, 
    cliente AS Cliente, 
    estilo_tatuaje AS Estilo, 
    duracion_horas AS Horas, 
    costo_usd AS CostoUSD
FROM citas_tatuajes
WHERE estado_cita = 'Completada'
ORDER BY costo_usd DESC;

-- Consulta 2: Conteo de citas, horas invertidas y recaudación total agrupadas por estilo de tatuaje
SELECT 
    estilo_tatuaje AS EstiloTatuaje, 
    COUNT(*) AS TotalCitas, 
    SUM(duracion_horas) AS HorasTotales, 
    SUM(costo_usd) AS RecaudacionTotalUSD
FROM citas_tatuajes
GROUP BY estilo_tatuaje
ORDER BY RecaudacionTotalUSD DESC;

-- Consulta 3: Top 3 de tatuajes más costosos realizados o agendados en el estudio
SELECT 
    cliente AS Cliente, 
    estilo_tatuaje AS Estilo, 
    duracion_horas AS Horas, 
    costo_usd AS CostoUSD
FROM citas_tatuajes
ORDER BY costo_usd DESC
LIMIT 3;

-- Consulta 4: Citas que se encuentran actualmente programadas en el estudio
SELECT 
    cliente AS ClientePendiente, 
    estilo_tatuaje AS Estilo, 
    costo_usd AS CostoEstimado
FROM citas_tatuajes
WHERE estado_cita = 'Programada';

-- Consulta 5: Promedio de costo y duración agrupados por el estado actual de la cita
SELECT 
    estado_cita AS EstadoCita, 
    COUNT(*) AS CantidadRegistros, 
    AVG(duracion_horas) AS PromedioHoras, 
    AVG(costo_usd) AS CostoPromedioUSD
FROM citas_tatuajes
GROUP BY estado_cita;