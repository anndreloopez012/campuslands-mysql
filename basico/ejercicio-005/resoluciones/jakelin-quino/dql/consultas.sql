-- 1. Todos los servicios
SELECT * FROM `ejercicio-005-bas-taller`;

-- 2. Servicios completados
SELECT cliente, marca, modelo, servicio, costo 
FROM `ejercicio-005-bas-taller` 
WHERE estado = 'completado';

-- 3. Servicios pendientes
SELECT cliente, marca, servicio, fecha_ingreso 
FROM `ejercicio-005-bas-taller` 
WHERE estado = 'pendiente';

-- 4. Servicios por costo mayor a 200
SELECT cliente, servicio, costo, estado 
FROM `ejercicio-005-bas-taller` 
WHERE costo > 200 ORDER BY costo DESC;

-- 5. Servicios de febrero 2025
SELECT cliente, marca, servicio, fecha_ingreso 
FROM `ejercicio-005-bas-taller` 
WHERE fecha_ingreso BETWEEN '2025-02-01' AND '2025-02-28';