USE db_viajes_turismo_irma;

-- Consulta 1: Listado oficial de paquetes turísticos disponibles ordenados por su ID principal
SELECT 
    id AS CodigoPaquete, 
    destino AS DestinoTuristico, 
    tipo_viaje AS Tipo, 
    duracion_dias AS Dias, 
    precio_usd AS PrecioUSD, 
    cupos_disponibles AS Cupos
FROM paquetes_turisticos
WHERE estado_paquete = 'Disponible'
ORDER BY id ASC;

-- Consulta 2: Conteo de paquetes y cupos totales agrupados por tipo de viaje
SELECT 
    tipo_viaje AS TipoViaje, 
    COUNT(*) AS TotalPaquetes, 
    SUM(cupos_disponibles) AS CuposTotalesDisponibles
FROM paquetes_turisticos
GROUP BY tipo_viaje
ORDER BY CuposTotalesDisponibles DESC;

-- Consulta 3: Top 3 de paquetes turísticos más costosos del catálogo de la agencia
SELECT 
    id AS Codigo, 
    destino AS DestinoLujo, 
    tipo_viaje AS Tipo, 
    precio_usd AS PrecioUSD
FROM paquetes_turisticos
ORDER BY precio_usd DESC
LIMIT 3;

-- Consulta 4: Paquetes que actualmente se encuentran agotados o sin cupos
SELECT 
    destino AS DestinoAgotado, 
    tipo_viaje AS Tipo, 
    precio_usd AS Precio
FROM paquetes_turisticos
WHERE estado_paquete = 'Agotado' OR cupos_disponibles = 0;

-- Consulta 5: Promedio de precios y duración en días agrupados por el estado del paquete
SELECT 
    estado_paquete AS EstadoPaquete, 
    COUNT(*) AS CantidadRegistros, 
    AVG(duracion_dias) AS PromedioDias, 
    AVG(precio_usd) AS PrecioPromedioUSD
FROM paquetes_turisticos
GROUP BY estado_paquete;