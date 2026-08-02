USE kickboxing_db;

-- 1. Listar todos los peleadores con su respectivo gimnasio, ciudad, entrenador, categoría de peso y récord de peleas usando múltiples JOINs relacionales
SELECT p.nombre_peleador, p.edad, g.nombre_gimnasio, g.ciudad, g.entrenador_principal, c.nombre_categoria, p.peleas_ganadas, p.peleas_perdidas, p.estado_peleador
FROM peleadores_kickboxing p
JOIN gimnasios g ON p.id_gimnasio = g.id_gimnasio
JOIN categorias_peso c ON p.id_categoria = c.id_categoria
ORDER BY p.peleas_ganadas DESC;

-- 2. Análisis agrupado por gimnasio: Calcular el total de peleadores entrenados, el acumulado de victorias y el promedio de edad de sus atletas
SELECT g.nombre_gimnasio, g.ciudad, g.entrenador_principal, COUNT(p.id_peleador) AS total_peleadores, SUM(p.peleas_ganadas) AS total_victorias_gimnasio, AVG(p.edad) AS edad_promedio
FROM gimnasios g
JOIN peleadores_kickboxing p ON g.id_gimnasio = p.id_gimnasio
GROUP BY g.id_gimnasio, g.nombre_gimnasio, g.ciudad, g.entrenador_principal
ORDER BY total_victorias_gimnasio DESC;

-- 3. Análisis agrupado por categoría de peso: Evaluar cuántos peleadores compiten en cada división y el límite de peso reglamentario
SELECT c.nombre_categoria, c.limite_peso_kg, COUNT(p.id_peleador) AS cantidad_peleadores, SUM(p.peleas_ganadas) AS victorias_en_categoria
FROM categorias_peso c
JOIN peleadores_kickboxing p ON c.id_categoria = p.id_categoria
GROUP BY c.id_categoria, c.nombre_categoria, c.limite_peso_kg
ORDER BY cantidad_peleadores DESC;

-- 4. Filtrar peleadores cuyo estado sea 'activo' y que acumulen 15 o más victorias en su carrera profesional
SELECT p.nombre_peleador, g.nombre_gimnasio, c.nombre_categoria, p.peleas_ganadas, p.peleas_perdidas, p.estado_peleador
FROM peleadores_kickboxing p
JOIN gimnasios g ON p.id_gimnasio = g.id_gimnasio
JOIN categorias_peso c ON p.id_categoria = c.id_categoria
WHERE p.estado_peleador = 'activo' AND p.peleas_ganadas >= 15
ORDER BY p.peleas_ganadas DESC;

-- 5. Ranking TOP 3 de los peleadores con mayor cantidad de victorias integrando datos completos de sus gimnasios y categorías
SELECT p.nombre_peleador, g.nombre_gimnasio, c.nombre_categoria, p.peleas_ganadas, p.peleas_perdidas
FROM peleadores_kickboxing p
JOIN gimnasios g ON p.id_gimnasio = g.id_gimnasio
JOIN categorias_peso c ON p.id_categoria = c.id_categoria
ORDER BY p.peleas_ganadas DESC
LIMIT 3;
