USE db_restaurante_urbano_irma;

-- Consulta 1: Listado de productos disponibles ordenados de mayor a menor precio
SELECT 
    nombre_producto AS Producto, 
    categoria AS Categoria, 
    precio AS PrecioUSD, 
    calorias AS Calorias
FROM menu_urbano
WHERE disponibilidad = 'Disponible'
ORDER BY precio DESC;

-- Consulta 2: Conteo de productos agrupados por categoría en el menú
SELECT 
    categoria AS CategoriaMenu, 
    COUNT(*) AS TotalProductos
FROM menu_urbano
GROUP BY categoria
ORDER BY TotalProductos DESC;

-- Consulta 3: Top 3 de productos más económicos del restaurante
SELECT 
    nombre_producto AS ProductoEconomico, 
    categoria AS Categoria, 
    precio AS Precio
FROM menu_urbano
ORDER BY precio ASC
LIMIT 3;

-- Consulta 4: Precio promedio de los platos agrupados por su disponibilidad actual
SELECT 
    disponibilidad AS EstadoDisponibilidad, 
    COUNT(*) AS CantidadItems, 
    AVG(precio) AS PrecioPromedioUSD
FROM menu_urbano
GROUP BY disponibilidad;

-- Consulta 5: Reporte de productos con mayor aporte calórico superando las 600 calorías
SELECT 
    nombre_producto AS PlatoCalorico, 
    calorias AS CaloriasTotales, 
    precio AS Precio
FROM menu_urbano
WHERE calorias > 600
ORDER BY calorias DESC;