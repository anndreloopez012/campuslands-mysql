-- Consulta 1: Total de corredores inscritos confirmados y total recaudado por inscripciones
SELECT 
    COUNT(participante_id) AS total_corredores_confirmados,
    SUM(monto_inscripcion_usd) AS recaudacion_inscripciones_usd
FROM participantes_carrera
WHERE estado_pago = 'Confirmado';

-- Consulta 2: Suma total de recaudación (Inscripciones + Donaciones) de la carrera
SELECT 
    SUM(monto_inscripcion_usd) AS total_inscripciones,
    SUM(monto_donacion_usd) AS total_donaciones,
    SUM(monto_inscripcion_usd + monto_donacion_usd) AS recaudacion_gran_total
FROM participantes_carrera
WHERE estado_pago = 'Confirmado';

-- Consulta 3: Recuento de participantes que completaron la carrera por distancia
SELECT 
    distancia_km,
    COUNT(participante_id) AS corredores_en_meta
FROM participantes_carrera
WHERE completo_carrera = TRUE 
  AND estado_pago = 'Confirmado'
GROUP BY distancia_km
ORDER BY distancia_km ASC;

-- Consulta 4: Total recaudado e inscritos agrupados por categoría
SELECT 
    categoria,
    COUNT(participante_id) AS cantidad_inscriptos,
    SUM(monto_inscripcion_usd) AS total_recaudado_categoria
FROM participantes_carrera
WHERE estado_pago = 'Confirmado'
GROUP BY categoria
ORDER BY total_recaudado_categoria DESC;