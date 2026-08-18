-- Consultas y análisis de rendimiento (EXPLAIN)
USE campuslands_mysql;

-- 1. EXPLAIN con Full Table Scan (Escaneo completo)
-- Al no tener índice en caballos_fuerza, MySQL revisará toda la tabla (type = ALL)
EXPLAIN SELECT modelo, caballos_fuerza 
FROM ejercicio_006_hiperdeportivos 
WHERE caballos_fuerza > 1500;

-- 2. EXPLAIN usando un Índice
-- Como creamos idx_marca, MySQL usará el índice (type = ref, possible_keys = idx_marca)
EXPLAIN SELECT modelo, velocidad_maxima_kmh 
FROM ejercicio_006_hiperdeportivos 
WHERE marca = 'Bugatti';

-- 3. EXPLAIN con ordenamiento (Filesort)
-- Analiza cómo MySQL resuelve el ordenamiento de los datos
EXPLAIN SELECT marca, modelo, precio_usd
FROM ejercicio_006_hiperdeportivos
WHERE estado_produccion = 'activo'
ORDER BY precio_usd DESC;

-- 4. Consulta de negocio: Promedio de velocidad y caballos por estado de producción
SELECT 
    estado_produccion, 
    COUNT(*) AS total_autos, 
    ROUND(AVG(velocidad_maxima_kmh), 2) AS promedio_velocidad_kmh,
    ROUND(AVG(caballos_fuerza), 0) AS promedio_cv
FROM ejercicio_006_hiperdeportivos
GROUP BY estado_produccion;

-- 5. Consulta de negocio: Top 3 hiperdeportivos con mejor relación precio/caballos de fuerza
SELECT 
    marca, 
    modelo, 
    precio_usd, 
    caballos_fuerza,
    ROUND((precio_usd / caballos_fuerza), 2) AS costo_por_caballo_usd
FROM ejercicio_006_hiperdeportivos
ORDER BY costo_por_caballo_usd ASC
LIMIT 3;