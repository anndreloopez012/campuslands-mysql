USE db_tienda_ropa_irma;

-- Consulta 1: Listado general de prendas activas ordenadas por precio de mayor a menor
SELECT 
    nombre_prenda AS Prenda, 
    categoria AS Categoria, 
    talla AS Talla, 
    precio AS PrecioUSD, 
    stock AS StockDisponible
FROM inventario_ropa
WHERE estado_stock != 'Agotado'
ORDER BY precio DESC;

-- Consulta 2: Conteo de productos y stock total agrupados por categoría de ropa
SELECT 
    categoria AS CategoriaPrenda, 
    COUNT(*) AS VariedadModelos, 
    SUM(stock) AS StockTotalUnidades
FROM inventario_ropa
GROUP BY categoria
ORDER BY StockTotalUnidades DESC;

-- Consulta 3: Top 3 de prendas más costosas del inventario de la tienda
SELECT 
    nombre_prenda AS PrendaExclusiva, 
    categoria AS Categoria, 
    precio AS PrecioUSD
FROM inventario_ropa
ORDER BY precio DESC
LIMIT 3;

-- Consulta 4: Prendas que se encuentran actualmente en estado de liquidación
SELECT 
    nombre_prenda AS PrendaLiquidacion, 
    talla AS Talla, 
    precio AS PrecioLiquidacion, 
    stock AS UnidadesRestantes
FROM inventario_ropa
WHERE estado_stock = 'Liquidacion';

-- Consulta 5: Promedio de precio y stock agrupado por el estado actual del inventario
SELECT 
    estado_stock AS EstadoInventario, 
    COUNT(*) AS TotalRegistros, 
    AVG(precio) AS PrecioPromedioUSD, 
    SUM(stock) AS StockAcumulado
FROM inventario_ropa
GROUP BY estado_stock;