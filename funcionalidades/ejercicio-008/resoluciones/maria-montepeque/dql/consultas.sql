-- funcionalidades/ejercicio-008 - maria-montepeque
USE campuslands_mysql;

-- 1. Subconsulta ESCALAR en el SELECT: compara el precio de cada plato contra
-- el precio promedio de TODO el menu (la subconsulta devuelve un solo valor).
SELECT
    nombre,
    categoria,
    precio,
    (SELECT ROUND(AVG(precio), 2) FROM platos_menu) AS precio_promedio_general
FROM platos_menu
ORDER BY precio DESC;

-- 2. Subconsulta en el WHERE con un operador de comparacion: solo platos mas
-- caros que el promedio general.
SELECT nombre, categoria, precio
FROM platos_menu
WHERE precio > (SELECT AVG(precio) FROM platos_menu)
ORDER BY precio DESC;

-- 3. Subconsulta CORRELACIONADA: compara cada plato contra el promedio de SU
-- PROPIA categoria (la subconsulta se vuelve a ejecutar por cada fila externa,
-- usando p.categoria = pm.categoria).
SELECT
    p.nombre,
    p.categoria,
    p.precio
FROM platos_menu p
WHERE p.precio > (
    SELECT AVG(pm.precio)
    FROM platos_menu pm
    WHERE pm.categoria = p.categoria
)
ORDER BY p.categoria;

-- 4. Subconsulta con IN: platos que SI han sido pedidos al menos una vez.
SELECT nombre, categoria, precio
FROM platos_menu
WHERE id IN (SELECT DISTINCT plato_id FROM pedidos_urbanos)
ORDER BY nombre;

-- 5. Subconsulta con NOT EXISTS: platos que NUNCA han sido pedidos.
-- (Se prefiere NOT EXISTS sobre NOT IN porque NOT IN falla de forma silenciosa
-- si la subconsulta llegara a devolver algun NULL).
SELECT p.nombre, p.categoria, p.precio
FROM platos_menu p
WHERE NOT EXISTS (
    SELECT 1 FROM pedidos_urbanos pu WHERE pu.plato_id = p.id
);

-- 6. Subconsulta con EXISTS: version correlacionada equivalente al IN del paso 4.
SELECT p.nombre, p.categoria, p.precio
FROM platos_menu p
WHERE EXISTS (
    SELECT 1 FROM pedidos_urbanos pu WHERE pu.plato_id = p.id
)
ORDER BY p.nombre;

-- 7. Subconsulta en el FROM (tabla derivada): ingresos totales por plato,
-- calculados aparte y luego combinados con platos_menu para ver el top 3.
SELECT
    p.nombre,
    p.categoria,
    ventas.total_unidades,
    ventas.ingresos_totales
FROM (
    SELECT
        plato_id,
        SUM(cantidad) AS total_unidades,
        SUM(cantidad * (SELECT precio FROM platos_menu WHERE id = plato_id)) AS ingresos_totales
    FROM pedidos_urbanos
    GROUP BY plato_id
) AS ventas
    INNER JOIN platos_menu p ON p.id = ventas.plato_id
ORDER BY ventas.ingresos_totales DESC
LIMIT 3;
