-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT 
    s.alias,
    e.tipo AS componente,
    e.marca_modelo
FROM Streamers s
JOIN Equipamiento e ON s.streamer_id = e.streamer_id;

SELECT 
    s.alias,
    t.titulo,
    t.categoria,
    t.duracion_minutos
FROM Streamers s
JOIN Transmisiones t ON s.streamer_id = t.streamer_id;
