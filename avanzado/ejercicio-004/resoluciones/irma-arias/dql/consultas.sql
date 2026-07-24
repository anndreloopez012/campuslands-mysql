-- DQL: Consultas analíticas y revisión de la tabla de auditoría generada por triggers
USE db_garaje_motos_avanzado;

-- Consulta 1: Top 5 de motos con mayor costo de reparación acumulado
SELECT 
    placa AS Placa,
    marca AS Marca,
    modelo AS Modelo,
    cilindraje AS Cilindraje_cc,
    costo_reparacion AS Costo_Reparacion,
    estado_motos AS Estado
FROM motos_garaje
ORDER BY costo_reparacion DESC
LIMIT 5;

-- Consulta 2: Promedio de costo de reparación y cilindraje agrupados por marca de moto
SELECT 
    marca AS Marca,
    COUNT(*) AS Total_Motos,
    AVG(cilindraje) AS Promedio_Cilindraje,
    AVG(costo_reparacion) AS Promedio_Costo_Reparacion
FROM motos_garaje
GROUP BY marca
ORDER BY Total_Costo_Reparacion DESC;

-- Consulta 3: Conteo y suma total de costos agrupados por el estado actual en el garaje
SELECT 
    estado_motos AS Estado_Actual,
    COUNT(*) AS Cantidad_Motos,
    SUM(costo_reparacion) AS Costo_Total_Acumulado
FROM motos_garaje
GROUP BY estado_motos
ORDER BY Cantidad_Motos DESC;

-- Consulta 4: Reporte de auditoría generado automáticamente por los Triggers del sistema
SELECT 
    id_auditoria AS ID_Log,
    id_moto AS Moto_Afectada,
    accion AS Tipo_Accion,
    detalle_cambio AS Detalle,
    fecha_evento AS Fecha_Y_Hora
FROM auditoria_garaje
ORDER BY fecha_evento DESC;

-- Consulta 5: Listado de motocicletas de alto cilindraje (mayor a 200cc) que siguen en proceso de revisión o reparación
SELECT 
    placa AS Placa,
    marca AS Marca,
    modelo AS Modelo,
    cilindraje AS Cilindraje,
    estado_motos AS Estado
FROM motos_garaje
WHERE cilindraje > 200 AND estado_motos IN ('en_revision', 'en_reparacion')
ORDER BY cilindraje DESC;