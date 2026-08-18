SELECT 
    e.nombre_evento,
    COUNT(i.id_corredor) AS total_inscritos,
    SUM(i.monto_pagado) AS recaudacion_verificada
FROM eventos_carrera e
LEFT JOIN inscripciones i ON e.id_evento = i.id_evento
GROUP BY e.id_evento, e.nombre_evento;