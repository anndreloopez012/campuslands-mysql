-- DQL: Consultas analíticas y reportes para el garaje de motos
USE db_garaje_motos;

-- Consulta 1: Listado de las 5 motos con mayor tarifa de mantenimiento disponibles
SELECT 
    placa AS Placa,
    marca AS Marca,
    modelo AS Modelo,
    cilindrada AS CC,
    tarifa_mantenimiento AS Tarifa_USD
FROM motos_garaje
WHERE estado = 'disponible'
ORDER BY tarifa_mantenimiento DESC
LIMIT 5;

-- Consulta 2: Costo promedio y total de mantenimiento agrupado por estado actual de la moto
SELECT 
    estado AS Estado_Moto,
    COUNT(*) AS Cantidad_Motos,
    SUM(tarifa_mantenimiento) AS Costo_Total_Mantenimiento,
    AVG(tarifa_mantenimiento) AS Costo_Promedio
FROM motos_garaje
GROUP BY estado
ORDER BY Costo_Total_Mantenimiento DESC;

-- Consulta 3: Filtrar motocicletas de alta cilindrada (mayor a 600 CC) ordenadas por año reciente
SELECT 
    placa AS Placa,
    marca AS Marca,
    modelo AS Modelo,
    cilindrada AS Cilindrada_CC,
    anio_fabricacion AS Anio
FROM motos_garaje
WHERE cilindrada > 600
ORDER BY anio_fabricacion DESC;

-- Consulta 4: Conteo de motocicletas agrupadas por marca para análisis de inventario
SELECT 
    marca AS Marca,
    COUNT(*) AS Total_Registros,
    AVG(cilindrada) AS Cilindrada_Promedio
FROM motos_garaje
GROUP BY marca
ORDER BY Total_Registros DESC;

-- Consulta 5: Reporte operativo de motos actualmente en mantenimiento con su respectiva tarifa y fecha de ingreso
SELECT 
    placa AS Placa,
    CONCAT(marca, ' ', modelo) AS Motocicleta,
    tarifa_mantenimiento AS Tarifa,
    fecha_ingreso AS Ingreso_Taller
FROM motos_garaje
WHERE estado = 'en_mantenimiento'
ORDER BY tarifa_mantenimiento DESC;