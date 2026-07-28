USE db_hiperdeportivos_irma;

-- Consulta 1: Filtrar autos que están disponibles para la venta
SELECT marca, modelo, precio_millones AS precio_mdd, estado
FROM autos
WHERE estado = 'Disponible';

-- Consulta 2: Filtrar hiperdeportivos cuya velocidad máxima supere los 420 km/h
SELECT marca, modelo, velocidad_maxima AS velocidad_kmh
FROM autos
WHERE velocidad_maxima > 420
ORDER BY velocidad_maxima DESC;

-- Consulta 3: Buscar autos con un precio menor a 2.5 millones de dólares
SELECT marca, modelo, precio_millones AS precio_mdd
FROM autos
WHERE precio_millones < 2.5;

-- Consulta 4: Filtrar autos que tengan más de 1500 caballos de fuerza y estén disponibles
SELECT marca, modelo, caballos_fuerza AS hp, estado
FROM autos
WHERE caballos_fuerza > 1500 AND estado = 'Disponible';

-- Consulta 5: Reporte agrupado de la cantidad de autos según su estado actual
SELECT estado, COUNT(*) AS total_autos, AVG(precio_millones) AS promedio_precio_mdd
FROM autos
GROUP BY estado;