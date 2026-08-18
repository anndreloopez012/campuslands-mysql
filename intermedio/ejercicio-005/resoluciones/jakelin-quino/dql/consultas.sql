-- 1. Servicios con costo mayor al promedio
SELECT cliente, servicio, costo 
FROM `ejercicio-005-int-taller`
WHERE costo > (SELECT AVG(costo) FROM `ejercicio-005-int-taller`);

-- 2. Servicios con costo mayor que cualquier servicio de Honda
SELECT cliente, marca, servicio, costo 
FROM `ejercicio-005-int-taller`
WHERE costo > (SELECT MAX(costo) FROM `ejercicio-005-int-taller` WHERE marca = 'Honda');

-- 3. Clientes con servicios más costosos que la revisión general
SELECT cliente, servicio, costo 
FROM `ejercicio-005-int-taller`
WHERE costo > (SELECT costo FROM `ejercicio-005-int-taller` WHERE servicio = 'Revisión general' LIMIT 1);

-- 4. Servicios más baratos que el promedio de su marca
SELECT cliente, marca, servicio, costo
FROM `ejercicio-005-int-taller` t1
WHERE costo < (SELECT AVG(costo) FROM `ejercicio-005-int-taller` t2 WHERE t1.marca = t2.marca);

-- 5. Servicios en proceso con costo mayor a cualquier servicio completado
SELECT cliente, servicio, costo 
FROM `ejercicio-005-int-taller`
WHERE estado = 'en proceso' 
  AND costo > (SELECT MAX(costo) FROM `ejercicio-005-int-taller` WHERE estado = 'completado');