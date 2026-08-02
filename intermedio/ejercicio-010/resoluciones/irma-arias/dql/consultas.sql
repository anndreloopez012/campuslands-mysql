USE carreras_urbanas_db;

-- 1. Listar corredores con su dorsal, email y la categoría de carrera asignada mediante JOIN
SELECT c.dorsal, c.nombre_corredor, c.email, cat.nombre_categoria, cat.distancia_km, c.estado
FROM corredores_urbanos c
JOIN categorias_carrera cat ON c.id_categoria = cat.id_categoria
ORDER BY c.dorsal ASC;

-- 2. Conteo de corredores inscritos agrupados por cada categoría de carrera
SELECT cat.nombre_categoria, COUNT(c.id_corredor) AS total_corredores, cat.distancia_km
FROM categorias_carrera cat
LEFT JOIN corredores_urbanos c ON cat.id_categoria = c.id_categoria
GROUP BY cat.nombre_categoria, cat.distancia_km
ORDER BY total_corredores DESC;

-- 3. Listar corredores que ya finalizaron la carrera con su respectiva categoría
SELECT c.dorsal, c.nombre_corredor, cat.nombre_categoria, c.estado
FROM corredores_urbanos c
JOIN categorias_carrera cat ON c.id_categoria = cat.id_categoria
WHERE c.estado = 'finalizado'
ORDER BY c.dorsal ASC;

-- 4. Filtrar categorías cuya distancia sea mayor o igual a 10 kilómetros
SELECT cat.nombre_categoria, cat.distancia_km, COUNT(c.id_corredor) AS inscritos_larga_distancia
FROM categorias_carrera cat
LEFT JOIN corredores_urbanos c ON cat.id_categoria = c.id_categoria
WHERE cat.distancia_km >= 10.00
GROUP BY cat.nombre_categoria, cat.distancia_km
ORDER BY cat.distancia_km DESC;

-- 5. Resumen de corredores agrupados por su estado actual en la competencia
SELECT estado, COUNT(*) AS cantidad_corredores
FROM corredores_urbanos
GROUP BY estado
ORDER BY cantidad_corredores DESC;
