-- DQL: Consultas analíticas utilizando GROUP BY y la cláusula HAVING
USE db_garaje_motos_intermedio;

-- Consulta 1: Marcas de motos cuyo costo promedio de reparación sea mayor a 150
SELECT 
    marca AS Marca,
    COUNT(*) AS Total_Motos,
    AVG(costo_reparacion) AS Promedio_Costo
FROM motos_taller
GROUP BY marca
HAVING AVG(costo_reparacion) > 150.00
ORDER BY Promedio_Costo DESC;

-- Consulta 2: Estados de servicio que concentren más de 2 motocicletas en el taller
SELECT 
    estado_motos AS Estado_Servicio,
    COUNT(*) AS Cantidad_Motos,
    SUM(costo_reparacion) AS Costo_Acumulado
FROM motos_taller
GROUP BY estado_motos
HAVING COUNT(*) > 2
ORDER BY Cantidad_Motos DESC;

-- Consulta 3: Marcas que tengan un cilindraje promedio superior a 200cc
SELECT 
    marca AS Marca,
    AVG(cilindraje) AS Promedio_Cilindraje,
    COUNT(*) AS Cantidad
FROM motos_taller
GROUP BY marca
HAVING AVG(cilindraje) > 200
ORDER BY Promedio_Cilindraje DESC;

-- Consulta 4: Estados operativos cuyo costo máximo de reparación supere los 200 en total acumulado del grupo
SELECT 
    estado_motos AS Estado,
    MAX(costo_reparacion) AS Costo_Maximo_Grupo,
    SUM(costo_reparacion) AS Suma_Total
FROM motos_taller
GROUP BY estado_motos
HAVING SUM(costo_reparacion) > 200.00
ORDER BY Suma_Total DESC;

-- Consulta 5: Filtrado avanzado por marca agrupando únicamente las que registren 2 o más ingresos
SELECT 
    marca AS Marca,
    COUNT(*) AS Motos_Registradas,
    AVG(costo_reparacion) AS Costo_Medio
FROM motos_taller
GROUP BY marca
HAVING COUNT(*) >= 2
ORDER BY Motos_Registradas DESC;