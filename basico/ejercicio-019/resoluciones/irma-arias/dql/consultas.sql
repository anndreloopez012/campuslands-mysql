USE db_paracaidismo_irma;

-- Consulta 1: Listado de saltos completados ordenados por altura de salto descendente
SELECT 
    id AS CodigoSalto, 
    nombre_alumnos_instructor AS Participante, 
    tipo_salto AS Tipo, 
    altura_pies AS AlturaPies, 
    costo_usd AS CostoUSD
FROM saltos_paracaidismo
WHERE estado_salto = 'Completado'
ORDER BY altura_pies DESC;

-- Consulta 2: Conteo de saltos y recaudación estimada agrupados por tipo de modalidad
SELECT 
    tipo_salto AS ModalidadSalto, 
    COUNT(*) AS TotalSaltos, 
    SUM(costo_usd) AS RecaudacionTotalUSD
FROM saltos_paracaidismo
GROUP BY tipo_salto
ORDER BY TotalSaltos DESC;

-- Consulta 3: Top 3 de saltos realizados a mayor altitud (experiencias extremas)
SELECT 
    nombre_alumnos_instructor AS ParticipanteExtremo, 
    tipo_salto AS Modalidad, 
    altura_pies AS AlturaPies, 
    costo_usd AS Costo
FROM saltos_paracaidismo
ORDER BY altura_pies DESC
LIMIT 3;

-- Consulta 4: Saltos que se encuentran actualmente programados en agenda
SELECT 
    nombre_alumnos_instructor AS ParticipanteProgramado, 
    tipo_salto AS Modalidad, 
    altura_pies AS AlturaPies
FROM saltos_paracaidismo
WHERE estado_salto = 'Programado';

-- Consulta 5: Promedio de costo e inversión agrupados por el estado actual del salto
SELECT 
    estado_salto AS EstadoSalto, 
    COUNT(*) AS CantidadRegistros, 
    AVG(costo_usd) AS CostoPromedioUSD
FROM saltos_paracaidismo
GROUP BY estado_salto;