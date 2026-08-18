-- 1. Autos con velocidad > 350 km/h
SELECT marca, modelo, velocidad_max, precio 
FROM `ejercicio-006-bas-autos`
WHERE velocidad_max > 350
ORDER BY velocidad_max DESC;

-- 2. Autos híbridos con precio < 2000000
SELECT marca, modelo, precio, aceleracion 
FROM `ejercicio-006-bas-autos`
WHERE combustible = 'híbrido' AND precio < 2000000;

-- 3. Autos con aceleración menor a 2.4 segundos
SELECT marca, modelo, aceleracion, velocidad_max 
FROM `ejercicio-006-bas-autos`
WHERE aceleracion < 2.4
ORDER BY aceleracion;

-- 4. Autos de 2024 con precio entre 500000 y 1000000
SELECT marca, modelo, año, precio 
FROM `ejercicio-006-bas-autos`
WHERE año = 2024 AND precio BETWEEN 500000 AND 1000000;

-- 5. Autos Bugatti o Koenigsegg
SELECT marca, modelo, velocidad_max, precio 
FROM `ejercicio-006-bas-autos`
WHERE marca IN ('Bugatti', 'Koenigsegg')
ORDER BY precio DESC;