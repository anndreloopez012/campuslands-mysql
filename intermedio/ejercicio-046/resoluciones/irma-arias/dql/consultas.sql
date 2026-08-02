USE restaurante_urbano_db;

-- 1. Informe detallado utilizando INNER JOIN múltiple: Listar cada platillo junto con su categoría, descripción, sucursal, zona, precio, calificación y estado operativo
SELECT p.nombre_platillo, c.nombre_categoria, s.nombre_sucursal, s.zona_ciudad, p.precio_usd, p.calificacion_cliente, p.estado_platillo
FROM platillos p
INNER JOIN categorias_menu c ON p.id_categoria = c.id_categoria
INNER JOIN sucursales s ON p.id_sucursal = s.id_sucursal
ORDER BY p.calificacion_cliente DESC;

-- 2. Informe agrupado por Categoría mediante INNER JOIN: Calcular la cantidad de platillos, el precio promedio y la calificación máxima por cada categoría de menú
SELECT c.nombre_categoria, c.descripcion_categoria, COUNT(p.id_platillo) AS total_platillos, ROUND(AVG(p.precio_usd), 2) AS precio_promedio_usd, MAX(p.calificacion_cliente) AS mejor_calificacion
FROM categorias_menu c
INNER JOIN platillos p ON c.id_categoria = p.id_categoria
GROUP BY c.id_categoria, c.nombre_categoria, c.descripcion_categoria
ORDER BY total_platillos DESC;

-- 3. Informe agrupado por Sucursal mediante INNER JOIN: Evaluar el rendimiento comercial calculando el número de platillos ofrecidos y la inversión requerida (suma de precios) por sucursal
SELECT s.nombre_sucursal, s.zona_ciudad, COUNT(p.id_platillo) AS platillos_ofrecidos, SUM(p.precio_usd) AS valor_total_menu_usd
FROM sucursales s
INNER JOIN platillos p ON s.id_sucursal = p.id_sucursal
GROUP BY s.id_sucursal, s.nombre_sucursal, s.zona_ciudad
ORDER BY valor_total_menu_usd DESC;

-- 4. Informe filtrado mediante INNER JOIN: Listar exclusivamente los platillos con estado 'disponible' y una calificación de cliente superior o igual a 9.0
SELECT p.nombre_platillo, c.nombre_categoria, s.nombre_sucursal, p.precio_usd, p.calificacion_cliente, p.estado_platillo
FROM platillos p
INNER JOIN categorias_menu c ON p.id_categoria = c.id_categoria
INNER JOIN sucursales s ON p.id_sucursal = s.id_sucursal
WHERE p.estado_platillo = 'disponible' AND p.calificacion_cliente >= 9.0
ORDER BY p.calificacion_cliente DESC;

-- 5. Ranking TOP 3 de los platillos de comida urbana mejor calificados mediante INNER JOIN integrando sucursales y categorías
SELECT p.nombre_platillo, c.nombre_categoria, s.nombre_sucursal, p.calificacion_cliente
FROM platillos p
INNER JOIN categorias_menu c ON p.id_categoria = c.id_categoria
INNER JOIN sucursales s ON p.id_sucursal = s.id_sucursal
ORDER BY p.calificacion_cliente DESC
LIMIT 3;
