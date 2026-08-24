USE ejercicio_20_int;

-- SUBCONSULTAS
-- 1. TATUAJES CON PRECIO SUPERIOR AL PRECIO

USE estudio_tatuajes;

SELECT
    nombre_diseno,
    precio,
    duracion_horas
FROM tatuajes
WHERE precio > (
    SELECT AVG(precio)
    FROM tatuajes
)
ORDER BY precio DESC;

-- 2.Tatuadores que tienen tatuajes  CON precio por encima de (700.000)

SELECT
    nombre,
    especialidad,
    experiencia_anios
FROM tatuadores
WHERE id_tatuador IN (
    SELECT id_tatuador
    FROM tatuajes
    WHERE precio > 700000
)
ORDER BY nombre;

-- 3.Clientes que tienen citas completadas

SELECT
    c.nombre,
    c.telefono,
    c.correo
FROM clientes c
WHERE EXISTS (
    SELECT 1
    FROM citas ci
    WHERE ci.id_cliente = c.id_cliente
      AND ci.estado = 'Completada'
)
ORDER BY c.nombre;

-- 4.Tatuajes con duración superior al promedio de su estilo
SELECT
    t.nombre_diseno,
    e.nombre AS estilo,
    t.duracion_horas
FROM tatuajes t
INNER JOIN estilos e
    ON t.id_estilo = e.id_estilo
WHERE t.duracion_horas > (
    SELECT AVG(t2.duracion_horas)
    FROM tatuajes t2
    WHERE t2.id_estilo = t.id_estilo
)
ORDER BY t.duracion_horas DESC;
