USE campuslands_mysqli;

-- 1. Total de corredores registrados
SELECT
    COUNT(*) AS Total_Corredores
FROM carreras_urbanas;

-- 2. Total de corredores que finalizaron la carrera
SELECT
    COUNT(*) AS Corredores_Finalizados
FROM carreras_urbanas
WHERE estado = 'Finalizada';

-- 3. Total de premios entregados
SELECT
    SUM(premio) AS Total_Premios
FROM carreras_urbanas;

-- 4. Total de kilómetros recorridos por todos los corredores
SELECT
    SUM(distancia_km) AS Kilometros_Recorridos
FROM carreras_urbanas;

-- 5. Total de corredores por categoría
SELECT
    categoria AS Categoria,
    COUNT(*) AS Total_Corredores
FROM carreras_urbanas
GROUP BY categoria
ORDER BY Total_Corredores DESC;

-- 6. Total de premios por categoría
SELECT
    categoria AS Categoria,
    SUM(premio) AS Total_Premios
FROM carreras_urbanas
GROUP BY categoria
ORDER BY Total_Premios DESC;