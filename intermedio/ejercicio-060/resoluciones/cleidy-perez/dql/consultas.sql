-- Consultas base. Completa o reemplaza segun el enunciado.SELECT 
    s.nickname,
    COUNT(t.id_transmision) AS total_streams,
    ROUND(SUM(t.duracion_minutos) / 60.0, 2) AS horas_totales,
    SUM(t.ingresos_generados) AS ingresos_brutos,
    ROUND(SUM(t.ingresos_generados * (1 - (p.comision_porcentaje / 100))), 2) AS ingresos_netos
FROM streamers s
JOIN transmisiones t ON s.id_streamer = t.id_streamer
JOIN plataformas p ON t.id_plataforma = p.id_plataforma
GROUP BY s.id_streamer, s.nickname;

SELECT 
    p.nombre_plataforma,
    COUNT(t.id_transmision) AS total_transmisiones,
    AVG(t.espectadores_promedio) AS espectadores_promedio_general,
    MAX(t.espectadores_pico) AS pico_maximo_alcanzado
FROM plataformas p
LEFT JOIN transmisiones t ON p.id_plataforma = t.id_plataforma
GROUP BY p.id_plataforma, p.nombre_plataforma;