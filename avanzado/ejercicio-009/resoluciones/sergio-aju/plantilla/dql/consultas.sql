-- Consultas y gestión de bloqueos (Locks) en MySQL
USE campuslands_mysql;

-- 1. BLOQUEO EXCLUSIVO (FOR UPDATE): Reservar y actualizar la bolsa acumulada de un peleador en una transacción concurrente
START TRANSACTION;

SELECT id, nombre, bolsa_acumulada_usd, estado
FROM ejercicio_009_kickboxing_peleadores
WHERE id = 1
FOR UPDATE;

UPDATE ejercicio_009_kickboxing_peleadores
SET bolsa_acumulada_usd = bolsa_acumulada_usd + 150000.00
WHERE id = 1;

COMMIT;


-- 2. BLOQUEO COMPARTIDO (FOR SHARE): Lectura protegida de datos para evitar modificaciones paralelas durante la consulta
START TRANSACTION;

SELECT id, nombre, categoria_peso, bolsa_acumulada_usd
FROM ejercicio_009_kickboxing_peleadores
WHERE estado = 'activo'
FOR SHARE;

COMMIT;


-- 3. CONSULTA ANALÍTICA: Porcentaje de efectividad por KO
SELECT 
    nombre, 
    categoria_peso, 
    victorias, 
    kos,
    ROUND((kos / victorias) * 100, 2) AS porcentaje_ko
FROM ejercicio_009_kickboxing_peleadores
WHERE victorias > 0
ORDER BY porcentaje_ko DESC;


-- 4. CONSULTA DE AGRUPAMIENTO: Resumen financiero y total de peleadores por categoría de peso
SELECT 
    categoria_peso, 
    COUNT(*) AS total_peleadores, 
    SUM(bolsa_acumulada_usd) AS bolsa_total_categoria,
    ROUND(AVG(bolsa_acumulada_usd), 2) AS bolsa_promedio
FROM ejercicio_009_kickboxing_peleadores
GROUP BY categoria_peso
ORDER BY bolsa_total_categoria DESC;


-- 5. CONSULTA DE FILTRADO: Top 3 peleadores activos con mayor margen de victorias frente a derrotas
SELECT 
    nombre, 
    categoria_peso, 
    victorias, 
    derrotas, 
    (victorias - derrotas) AS margen_victorias
FROM ejercicio_009_kickboxing_peleadores
WHERE estado = 'activo'
ORDER BY margen_victorias DESC
LIMIT 3;