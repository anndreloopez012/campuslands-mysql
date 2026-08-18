USE campuslands_mysql;

-- 1. Aventureros activos ordenados por nivel
SELECT nombre, clase, nivel, vida_maxima
FROM aventureros_basico
WHERE estado = 'activo'
ORDER BY nivel DESC;

-- 2. Aventureros de una clase especifica
SELECT nombre, nivel, oro
FROM aventureros_basico
WHERE clase = 'mago';

-- 3. Aventureros de nivel avanzado (20 o mas)
SELECT nombre, clase, nivel
FROM aventureros_basico
WHERE nivel >= 20
ORDER BY nivel DESC;

-- 4. Vida maxima promedio por clase
SELECT clase, COUNT(*) AS total_aventureros, AVG(vida_maxima) AS vida_promedio
FROM aventureros_basico
GROUP BY clase
ORDER BY vida_promedio DESC;

-- 5. Top 3 aventureros con mas oro
SELECT nombre, clase, oro
FROM aventureros_basico
ORDER BY oro DESC
LIMIT 3;

-- 6. Cantidad de aventureros por estado
SELECT estado, COUNT(*) AS total
FROM aventureros_basico
GROUP BY estado
ORDER BY total DESC;
