

SELECT 
    v.videojuego_id,
    v.titulo,
    v.genero,
    p.nombre_plataforma,
    p.tipo_hardware,
    v.horas_jugadas
FROM videojuegos v
INNER JOIN plataformas p ON v.plataforma_id = p.plataforma_id
ORDER BY v.horas_jugadas DESC;

SELECT 
    p.nombre_plataforma,
    COUNT(v.videojuego_id) AS total_juegos,
    SUM(v.horas_jugadas) AS total_horas_acumuladas,
    ROUND(SUM(v.precio_compra_usd), 2) AS inversion_total_usd
FROM plataformas p
LEFT JOIN videojuegos v ON p.plataforma_id = v.plataforma_id
GROUP BY p.plataforma_id, p.nombre_plataforma
ORDER BY total_horas_acumuladas DESC;

SELECT 
    v.titulo,
    p.nombre_plataforma,
    v.horas_jugadas,
    v.precio_compra_usd
FROM videojuegos v
INNER JOIN plataformas p ON v.plataforma_id = p.plataforma_id
WHERE v.completado = FALSE
ORDER BY v.precio_compra_usd DESC;