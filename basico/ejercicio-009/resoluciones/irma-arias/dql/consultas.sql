USE db_kickboxing_irma;

-- Consulta 1: Listado general de luchadores activos ordenados por sus peleas ganadas
SELECT 
    nombre_completo AS Luchador, 
    categoria_peso AS Categoria, 
    peleas_ganadas AS Victorias, 
    peleas_perdidas AS Derrotas
FROM luchadores
WHERE estado = 'Activo'
ORDER BY peleas_ganadas DESC;

-- Consulta 2: Top 3 de luchadores con más victorias (Ranking)
SELECT 
    nombre_completo AS LuchadorDestacado, 
    peleas_ganadas AS TotalVictorias
FROM luchadores
ORDER BY peleas_ganadas DESC
LIMIT 3;

-- Consulta 3: Conteo de luchadores agrupados por categoría de peso
SELECT 
    categoria_peso AS Categoria, 
    COUNT(*) AS TotalLuchadores
FROM luchadores
GROUP BY categoria_peso
ORDER BY TotalLuchadores DESC;

-- Consulta 4: Luchadores con un rendimiento favorable (más victorias que derrotas)
SELECT 
    nombre_completo AS Luchador, 
    peleas_ganadas AS Victorias, 
    peleas_perdidas AS Derrotas
FROM luchadores
WHERE peleas_ganadas > peleas_perdidas
ORDER BY peleas_ganadas DESC;

-- Consulta 5: Reporte completo ordenado alfabéticamente por el nombre del luchador con alias claros
SELECT 
    nombre_completo AS NombreCompleto, 
    categoria_peso AS Division, 
    estado AS EstadoActual
FROM luchadores
ORDER BY nombre_completo ASC;