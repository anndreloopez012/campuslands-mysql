-- Consultas demostrando estrategias de Carga de Datos masiva (Bulk Insert & Upsert).
USE campuslands_mysql;

-- 1. [Documentacion] Carga masiva desde un archivo externo (LOAD DATA INFILE)
-- En un entorno real, los datos llegan a la tabla staging usando este comando:
/*
LOAD DATA LOCAL INFILE '/ruta/al/archivo/lote_juegos.csv'
INTO TABLE intermedio_ejercicio_015_juegos_staging
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(codigo_sku, titulo, desarrollador, precio_usd);
*/

-- 2. Comparativa: Identificar que juegos de Staging son nuevos y cuales son actualizaciones
SELECT s.codigo_sku, s.titulo AS titulo_staging, s.precio_usd AS precio_nuevo, p.precio_usd AS precio_actual,
CASE WHEN p.codigo_sku IS NULL THEN 'NUEVO REGISTRO' ELSE 'ACTUALIZACION' END AS accion_requerida
    FROM intermedio_ejercicio_015_juegos_staging s
    LEFT JOIN intermedio_ejercicio_015_juegos_produccion p ON s.codigo_sku = p.codigo_sku;

-- 3. Estrategia 1: INSERT IGNORE (Carga solo los juegos nuevos, ignora los existentes sin dar error)
INSERT IGNORE INTO intermedio_ejercicio_015_juegos_produccion (codigo_sku, titulo, desarrollador, precio_usd)
SELECT codigo_sku, titulo, desarrollador, precio_usd FROM intermedio_ejercicio_015_juegos_staging;

-- 4. Estrategia 2: UPSERT (INSERT ... ON DUPLICATE KEY UPDATE)
-- Carga los juegos nuevos y, si el SKU ya existe, actualiza el precio automaticamente
INSERT INTO intermedio_ejercicio_015_juegos_produccion (codigo_sku, titulo, desarrollador, precio_usd)
SELECT codigo_sku, titulo, desarrollador, precio_usd FROM intermedio_ejercicio_015_juegos_staging
ON DUPLICATE KEY UPDATE precio_usd = VALUES(precio_usd);

-- 5. Verificacion del catalogo de produccion tras la carga de datos
-- (Notaremos que GM-001 bajo de precio a 19.99 y se agregaron los juegos 004, 005 y 006)
SELECT codigo_sku, titulo, desarrollador, precio_usd, ultima_actualizacion 
    FROM intermedio_ejercicio_015_juegos_produccion 
    ORDER BY codigo_sku ASC;