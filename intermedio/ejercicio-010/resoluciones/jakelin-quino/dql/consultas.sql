-- 1. Ver todos los corredores
SELECT * FROM `ejercicio-010-int-corredores`;

-- 2. Ver todas las carreras
SELECT * FROM `ejercicio-010-int_carreras`;

-- 3. Mostrar índices UNIQUE de corredores
SHOW INDEX FROM `ejercicio-010-int-corredores` 
WHERE Non_unique = 0;

-- 4. Mostrar índices UNIQUE de carreras
SHOW INDEX FROM `ejercicio-010-int_carreras` 
WHERE Non_unique = 0;

-- 5. Corredores por ciudad (sin duplicados)
SELECT ciudad, COUNT(*) AS total
FROM `ejercicio-010-int-corredores`
GROUP BY ciudad;

-- 6. Verificar integridad de emails únicos
SELECT email, COUNT(*) AS duplicados
FROM `ejercicio-010-int-corredores`
GROUP BY email
HAVING duplicados > 1;