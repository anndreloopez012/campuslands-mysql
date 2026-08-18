-- funcionalidades/ejercicio-009 - maria-montepeque
USE campuslands_mysql;

-- 1. CTE simple (no recursiva): resume el inventario por categoria y lo usa
-- despues como si fuera una tabla normal. Reemplaza tener que escribir el mismo
-- GROUP BY como subconsulta en el FROM.
WITH resumen_categoria AS (
    SELECT
        categoria_id,
        COUNT(*) AS total_productos,
        SUM(stock) AS stock_total,
        ROUND(AVG(precio), 2) AS precio_promedio
    FROM productos_ropa
    GROUP BY categoria_id
)
SELECT
    c.nombre AS categoria,
    rc.total_productos,
    rc.stock_total,
    rc.precio_promedio
FROM resumen_categoria rc
    INNER JOIN categorias_ropa c ON c.id = rc.categoria_id
ORDER BY rc.precio_promedio DESC;

-- 2. Dos CTEs encadenadas en el mismo WITH: productos con poco stock y
-- productos de precio alto, combinadas para encontrar los que son AMBAS cosas
-- (candidatos urgentes a reabastecer).
WITH stock_bajo AS (
    SELECT id, nombre, categoria_id, stock
    FROM productos_ropa
    WHERE stock <= 4
),
precio_alto AS (
    SELECT id, precio
    FROM productos_ropa
    WHERE precio >= 50
)
SELECT
    sb.nombre,
    c.nombre AS categoria,
    sb.stock,
    pa.precio
FROM stock_bajo sb
    INNER JOIN precio_alto pa ON pa.id = sb.id
    INNER JOIN categorias_ropa c ON c.id = sb.categoria_id;

-- 3. CTE RECURSIVA: lista una categoria y TODAS sus subcategorias, sin importar
-- cuantos niveles tenga el arbol debajo (parte de 'Ropa de Hombre', id = 2).
WITH RECURSIVE subcategorias AS (
    SELECT id, nombre, categoria_padre_id, 0 AS nivel
    FROM categorias_ropa
    WHERE id = 2
    UNION ALL
    SELECT c.id, c.nombre, c.categoria_padre_id, sc.nivel + 1
    FROM categorias_ropa c
        INNER JOIN subcategorias sc ON c.categoria_padre_id = sc.id
)
SELECT id, nombre, nivel FROM subcategorias ORDER BY nivel, nombre;

-- 4. La misma CTE recursiva usada como filtro: total de productos, stock y
-- valor de inventario de TODA la seccion 'Ropa de Hombre', sumando productos
-- que estan en distintos niveles del arbol (Camisas, Camisas de Vestir, etc.).
WITH RECURSIVE subcategorias AS (
    SELECT id FROM categorias_ropa WHERE id = 2
    UNION ALL
    SELECT c.id
    FROM categorias_ropa c
        INNER JOIN subcategorias sc ON c.categoria_padre_id = sc.id
)
SELECT
    COUNT(*) AS total_productos,
    SUM(stock) AS stock_total,
    ROUND(SUM(precio * stock), 2) AS valor_inventario
FROM productos_ropa
WHERE categoria_id IN (SELECT id FROM subcategorias);

-- 5. CTE RECURSIVA para construir la ruta completa de cada categoria
-- (breadcrumb), concatenando el nombre desde la raiz hasta cada nodo.
WITH RECURSIVE ruta_categoria AS (
    SELECT id, nombre, categoria_padre_id, CAST(nombre AS CHAR(200)) AS ruta_completa
    FROM categorias_ropa
    WHERE categoria_padre_id IS NULL
    UNION ALL
    SELECT c.id, c.nombre, c.categoria_padre_id, CONCAT(rc.ruta_completa, ' > ', c.nombre)
    FROM categorias_ropa c
        INNER JOIN ruta_categoria rc ON c.categoria_padre_id = rc.id
)
SELECT id, ruta_completa FROM ruta_categoria ORDER BY ruta_completa;
