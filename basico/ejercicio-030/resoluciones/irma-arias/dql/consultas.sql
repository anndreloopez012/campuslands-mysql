USE db_equipo_streaming;

-- Consulta 1: Listar los equipos de streaming junto con el nombre de su categoría usando INNER JOIN
e.nombre_equipo, 
    c.nombre_categoria AS categoria, 
    e.precio, 
    e.stock, 
    e.estado
FROM equipos_streaming e
INNER JOIN categorias_equipo c ON e.categoria_id = c.id
WHERE e.estado = 'disponible'
ORDER BY e.precio DESC;

-- Consulta 2: Resumen agrupado por categoría, contando el total de equipos y calculando el precio promedio
SELECT 
    c.nombre_categoria AS categoria, 
    COUNT(e.id) AS total_equipos, 
    AVG(e.precio) AS precio_promedio
FROM categorias_equipo c
LEFT JOIN equipos_streaming e ON c.id = e.categoria_id
GROUP BY c.id, c.nombre_categoria;

-- Consulta 3: Top 3 de equipos más costosos del inventario de streaming (Ranking)
SELECT 
    e.nombre_equipo, 
    c.nombre_categoria AS categoria, 
    e.precio, 
    e.estado
FROM equipos_streaming e
INNER JOIN categorias_equipo c ON e.categoria_id = c.id
ORDER BY e.precio DESC
LIMIT 3;

-- Consulta 4: Filtrar equipos disponibles cuyo precio sea menor a 150.00
SELECT 
    e.nombre_equipo, 
    c.nombre_categoria AS categoria, 
    e.precio, 
    e.stock
FROM equipos_streaming e
INNER JOIN categorias_equipo c ON e.categoria_id = c.id
WHERE e.estado = 'disponible' AND e.precio < 150.00;

-- Consulta 5: Conteo y stock total agrupado por el estado actual de los equipos
SELECT 
    estado, 
    COUNT(*) AS cantidad_equipos, 
    SUM(stock) AS stock_total
FROM equipos_streaming
GROUP BY estado;