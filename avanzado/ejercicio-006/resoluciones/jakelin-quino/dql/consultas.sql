-- 1. Ver índices creados
SHOW INDEX FROM `ejercicio-006-adv-autos`;

-- 2. EXPLAIN consulta simple (usa índice marca)
EXPLAIN SELECT * FROM `ejercicio-006-adv-autos` 
WHERE marca = 'Ferrari';

-- 3. EXPLAIN consulta con rango (usa índice precio)
EXPLAIN SELECT * FROM `ejercicio-006-adv-autos` 
WHERE precio BETWEEN 1000000 AND 3000000;

-- 4. EXPLAIN consulta con ORDER BY (usa índice velocidad)
EXPLAIN SELECT marca, modelo, velocidad_max 
FROM `ejercicio-006-adv-autos` 
WHERE velocidad_max > 350 
ORDER BY velocidad_max DESC;

-- 5. EXPLAIN consulta con múltiples condiciones
EXPLAIN SELECT marca, modelo, precio, combustible 
FROM `ejercicio-006-adv-autos` 
WHERE marca = 'Lamborghini' AND precio > 600000;