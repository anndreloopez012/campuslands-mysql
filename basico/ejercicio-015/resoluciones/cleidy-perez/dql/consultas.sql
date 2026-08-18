-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT 
    v.titulo,
    v.genero,
    v.horas_jugadas,
    p.nombre AS plataforma,
    p.desarrollador
FROM Videojuegos v
INNER JOIN Plataformas p ON v.plataforma_id = p.plataforma_id;

SELECT 
    p.nombre AS plataforma,
    p.desarrollador,
    COUNT(v.juego_id) AS total_juegos
FROM Plataformas p
LEFT JOIN Videojuegos v ON p.plataforma_id = v.plataforma_id
GROUP BY p.plataforma_id, p.nombre, p.desarrollador;
