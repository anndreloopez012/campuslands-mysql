-- 1. Ver índices creados
SHOW INDEX FROM `ejercicio-005-adv-taller`;

-- 2. Consulta con índice simple (estado)
SELECT cliente, servicio, estado 
FROM `ejercicio-005-adv-taller` 
WHERE estado = 'completado';

-- 3. Consulta con índice compuesto (marca + estado)
SELECT cliente, marca, servicio, estado 
FROM `ejercicio-005-adv-taller` 
WHERE marca = 'Honda' AND estado = 'completado';

-- 4. Consulta con índice de fecha
SELECT cliente, servicio, fecha_ingreso 
FROM `ejercicio-005-adv-taller` 
WHERE fecha_ingreso BETWEEN '2025-06-01' AND '2025-08-01';

-- 5. Analizar uso de índices
EXPLAIN SELECT cliente, marca, estado 
FROM `ejercicio-005-adv-taller` 
WHERE marca = 'Yamaha' AND estado = 'en proceso';