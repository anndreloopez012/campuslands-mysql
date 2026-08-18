-- 1. Ver todos los luchadores
SELECT * FROM `ejercicio-009-bas-luchadores`;

-- 2. DELETE controlado: eliminar inactivos
DELETE FROM `ejercicio-009-bas-luchadores` 
WHERE activo = 0;

-- 3. Ver después de eliminar inactivos
SELECT * FROM `ejercicio-009-bas-luchadores`;

-- 4. DELETE con condición: más de 5 derrotas y menos de 5 victorias
DELETE FROM `ejercicio-009-bas-luchadores` 
WHERE derrotas > 5 AND victorias < 5;

-- 5. Ver después de segunda eliminación
SELECT * FROM `ejercicio-009-bas-luchadores`;

-- 6. DELETE seguro con LIMIT (eliminar solo 1)
DELETE FROM `ejercicio-009-bas-luchadores` 
WHERE nocauts < 5 
LIMIT 1;

-- 7. Ver resultado final
SELECT * FROM `ejercicio-009-bas-luchadores`;