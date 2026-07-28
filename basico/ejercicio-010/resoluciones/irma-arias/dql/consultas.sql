USE db_carreras_urbanas_irma;

-- Consulta 1: Total de corredores inscritos en la carrera urbana
SELECT COUNT(*) AS TotalCorredoresInscritos
FROM participantes_carrera;

-- Consulta 2: Recaudación total de dinero por inscripciones pagadas usando SUM
SELECT SUM(costo_inscripcion) AS RecaudacionTotalPagada
FROM participantes_carrera
WHERE estado_pago = 'Pagado';

-- Consulta 3: Conteo de participantes agrupados por cada distancia de carrera
SELECT 
    distancia_km AS DistanciaKm, 
    COUNT(*) AS TotalParticipantesPorDistancia
FROM participantes_carrera
GROUP BY distancia_km
ORDER BY DistanciaKm ASC;

-- Consulta 4: Suma total recaudada y cantidad de corredores agrupados por categoría
SELECT 
    categoria AS Categoria, 
    COUNT(*) AS TotalInscritos, 
    SUM(costo_inscripcion) AS DineroRecaudadoPorCategoria
FROM participantes_carrera
GROUP BY categoria
ORDER BY DineroRecaudadoPorCategoria DESC;

-- Consulta 5: Conteo detallado de corredores según su estado de pago
SELECT 
    estado_pago AS EstadoPago, 
    COUNT(*) AS CantidadCorredores
FROM participantes_carrera
GROUP BY estado_pago;