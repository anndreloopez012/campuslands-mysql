USE paracaidismo_db;

-- 1. Total de saltos y promedio de altura agrupados por modalidad (solo completados)
SELECT modalidad, COUNT(*) AS total_saltos, AVG(altura_pies) AS altura_promedio
FROM saltos_paracaidismo
WHERE estado = 'completado'
GROUP BY modalidad
ORDER BY altura_promedio DESC;

-- 2. Ranking TOP 3 de los saltos con mayor costo en la academia
SELECT nombre_paracaidista, modalidad, costo_usd
FROM saltos_paracaidismo
ORDER BY costo_usd DESC
LIMIT 3;

-- 3. Conteo de saltos según su estado operativo
SELECT estado, COUNT(*) AS cantidad_saltos
FROM saltos_paracaidismo
GROUP BY estado;

-- 4. Listado de saltos de alta gama con altura mayor a 13000 pies
SELECT nombre_paracaidista, modalidad, altura_pies, costo_usd
FROM saltos_paracaidismo
WHERE altura_pies > 13000 AND estado = 'completado'
ORDER BY altura_pies DESC;

-- 5. Promedio de calificación del instructor por modalidad de salto
SELECT modalidad, AVG(calificacion_instructor) AS promedio_calificacion
FROM saltos_paracaidismo
GROUP BY modalidad
ORDER BY promedio_calificacion DESC;
