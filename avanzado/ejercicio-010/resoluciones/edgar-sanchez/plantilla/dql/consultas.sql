
SELECT 
    i.inscripcion_id,
    c.nombre_circuito,
    c.ciudad,
    co.nombre_completo AS corredor,
    co.dni_pasaporte,
    i.numero_dorsal,
    i.categoria,
    i.tiempo_minutos
FROM inscripciones_carreras i
INNER JOIN circuitos_urbanos c ON i.circuito_id = c.circuito_id
INNER JOIN corredores_urbanos co ON i.corredor_id = co.corredor_id
ORDER BY c.nombre_circuito ASC, i.tiempo_minutos ASC;

SELECT 
    c.nombre_circuito,
    c.longitud_km,
    COUNT(i.inscripcion_id) AS total_inscritos,
    MIN(i.tiempo_minutos) AS mejor_tiempo_minutos,
    ROUND(AVG(i.tiempo_minutos), 2) AS tiempo_promedio_minutos
FROM circuitos_urbanos c
LEFT JOIN inscripciones_carreras i ON c.circuito_id = i.circuito_id
GROUP BY c.circuito_id, c.nombre_circuito, c.longitud_km
ORDER BY total_inscritos DESC;

SELECT 
    co.nombre_completo,
    co.email,
    COUNT(i.inscripcion_id) AS circuitos_disputados
FROM corredores_urbanos co
INNER JOIN inscripciones_carreras i ON co.corredor_id = i.corredor_id
GROUP BY co.corredor_id, co.nombre_completo, co.email
HAVING COUNT(i.inscripcion_id) > 1
ORDER BY circuitos_disputados DESC;