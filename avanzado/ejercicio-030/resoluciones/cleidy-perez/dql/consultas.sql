SELECT 
    TABLE_NAME AS tabla,
    INDEX_NAME AS nombre_indice,
    COLUMN_NAME AS columna,
    NON_UNIQUE AS permite_duplicados,
    INDEX_TYPE AS tipo_indice
FROM INFORMATION_SCHEMA.STATISTICS
WHERE TABLE_SCHEMA = 'streaming_optimizacion_db';
