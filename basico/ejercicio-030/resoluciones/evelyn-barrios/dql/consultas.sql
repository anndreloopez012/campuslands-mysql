-- dql/consultas.sql
-- Consultas para analizar los datos del equipo de streaming.

USE streaming_setup;

-- 1. Listar todo el equipo de un streamer específico.
-- Se usa un JOIN para mostrar el nombre del streamer en lugar de su ID.
SELECT 
    s.nombre_usuario,
    e.nombre_equipo,
    e.tipo_equipo,
    e.marca,
    e.precio
FROM equipos e
JOIN streamers s ON e.streamer_id = s.id
WHERE s.nombre_usuario = 'EvelynStream';

-- 2. Calcular el valor total del equipo por cada streamer.
-- Demuestra el uso de agregación (SUM) con JOIN y GROUP BY.
SELECT 
    s.nombre_usuario,
    SUM(e.precio) AS valor_total_equipo
FROM equipos e
JOIN streamers s ON e.streamer_id = s.id
GROUP BY s.nombre_usuario
ORDER BY valor_total_equipo DESC;

-- 3. Contar cuántas piezas de equipo tiene cada streamer.
SELECT s.nombre_usuario, COUNT(e.id) AS cantidad_piezas
FROM streamers s
JOIN equipos e ON s.id = e.streamer_id
GROUP BY s.nombre_usuario;

-- 4. Encontrar el equipo más caro de todo el inventario.
SELECT nombre_equipo, marca, precio FROM equipos ORDER BY precio DESC LIMIT 1;

-- 5. Listar todo el equipo que se encuentra 'En Reparación'.
SELECT s.nombre_usuario, e.nombre_equipo, e.marca
FROM equipos e
JOIN streamers s ON e.streamer_id = s.id
WHERE e.estado = 'En Reparación';