-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

EXPLAIN SELECT 
    titulo, 
    horas_jugadas 
FROM Videojuegos 
WHERE genero = 'RPG' AND horas_jugadas > 100;

EXPLAIN SELECT 
    p.nombre AS plataforma, 
    v.titulo, 
    v.horas_jugadas 
FROM Videojuegos v
JOIN Plataformas p ON v.plataforma_id = p.plataforma_id
WHERE v.plataforma_id = 1;
