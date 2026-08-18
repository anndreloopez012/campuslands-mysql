USE campuslands_mysql;

-- ===================================================================
-- PASO 1: medir la consulta "antes" de optimizar. Sin ningun indice
-- sobre "creador" (solo existe el indice implicito de la PRIMARY
-- KEY), MySQL no tiene otra opcion que recorrer toda la tabla.
--
-- Resultado real medido al preparar esta resolucion (5000 filas):
--   -> Table scan on interacciones_chat_avanzado
--      (cost=500 rows=5000) (actual time=3.04..3.72 rows=5000 loops=1)
--   -> Filter: creador = 'MidnightPlays'
--      (cost=500 rows=500) (actual time=4.11..5.13 rows=1000 loops=1)
--   Tiempo total real: actual time=5.22..5.22 (~5.22 ms)
-- ===================================================================
EXPLAIN ANALYZE
SELECT COUNT(*) FROM interacciones_chat_avanzado WHERE creador = 'MidnightPlays';

-- ===================================================================
-- PASO 2: optimizar. Se crea un indice sobre la columna que se usa
-- para filtrar en casi todas las consultas de este reporte.
-- ===================================================================
CREATE INDEX idx_interacciones_chat_avanzado_creador ON interacciones_chat_avanzado (creador);

-- ===================================================================
-- PASO 3: medir la misma consulta "despues" de optimizar.
--
-- Resultado real medido (misma tabla, mismas 5000 filas):
--   -> Covering index lookup on interacciones_chat_avanzado
--      using idx_interacciones_chat_avanzado_creador (creador='MidnightPlays')
--      (cost=136 rows=1000) (actual time=0.0437..0.236 rows=1000 loops=1)
--   Tiempo total real: actual time=0.725..0.725 (~0.73 ms)
--
-- Mejora real: de 5.22 ms a 0.73 ms (~7.2 veces mas rapido), y MySQL
-- ya no necesita leer las 5000 filas, solo las 1000 que coinciden
-- (ademas el indice es "covering": no tiene que ir a la tabla, la
-- respuesta se arma solo con el indice).
-- ===================================================================
EXPLAIN ANALYZE
SELECT COUNT(*) FROM interacciones_chat_avanzado WHERE creador = 'MidnightPlays';

-- 4. Consulta de negocio que ya se beneficia del indice: interacciones de un creador, por tipo
SELECT tipo_interaccion, COUNT(*) AS total
FROM interacciones_chat_avanzado
WHERE creador = 'MidnightPlays'
GROUP BY tipo_interaccion
ORDER BY total DESC;

-- 5. Distribucion de interacciones por creador (usa el indice para el ORDER BY implicito de GROUP BY)
SELECT creador, COUNT(*) AS total_interacciones
FROM interacciones_chat_avanzado
GROUP BY creador
ORDER BY total_interacciones DESC;

-- 6. EXPLAIN de una consulta que filtra por creador Y tipo_interaccion:
-- el indice de una sola columna ayuda pero no cubre el segundo filtro
-- (se ve "Using where" ademas de la busqueda por indice).
-- Resultado real: type=ref, key=idx_interacciones_chat_avanzado_creador,
-- rows=1000, filtered=25.00, Extra=Using where.
EXPLAIN
SELECT COUNT(*)
FROM interacciones_chat_avanzado
WHERE creador = 'DevWithSara' AND tipo_interaccion = 'donacion';
