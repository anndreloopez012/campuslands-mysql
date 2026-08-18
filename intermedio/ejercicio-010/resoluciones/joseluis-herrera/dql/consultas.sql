SELECT COUNT(*) AS total_corredores_registrados 
FROM corredores;

SELECT COUNT(id_corredor) AS total_corredores_categoria_libre 
FROM corredores 
WHERE categoria_edad = 'Libre';

SELECT SUM(monto_pagado) AS ingresos_totales_recaudados 
FROM inscripciones;


SELECT 
    e.nombre_evento,
    e.distancia_km,
    COUNT(i.id_corredor) AS total_participantes,
    SUM(i.monto_pagado) AS recaudacion_total_evento
FROM eventos_carrera e
LEFT JOIN inscripciones i ON e.id_evento = i.id_evento
GROUP BY e.id_evento, e.nombre_evento, e.distancia_km
ORDER BY recaudacion_total_evento DESC;