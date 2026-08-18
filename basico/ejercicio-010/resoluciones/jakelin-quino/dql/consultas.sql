-- 1. Total de corredores
SELECT COUNT(*) AS total_corredores 
FROM `ejercicio-010-bas-corredores`;

-- 2. Total de carreras y puntos acumulados
SELECT SUM(carreras) AS total_carreras, 
       SUM(puntos) AS total_puntos,
       SUM(premios) AS total_premios
FROM `ejercicio-010-bas-corredores`;

-- 3. Promedio por categoría
SELECT categoria, 
       COUNT(*) AS cantidad,
       AVG(puntos) AS promedio_puntos,
       SUM(premios) AS total_premios
FROM `ejercicio-010-bas-corredores`
GROUP BY categoria
ORDER BY promedio_puntos DESC;

-- 4. Estadísticas por ciudad
SELECT ciudad,
       COUNT(*) AS corredores,
       SUM(carreras) AS carreras_totales,
       AVG(puntos) AS puntos_prom,
       SUM(premios) AS premios_totales
FROM `ejercicio-010-bas-corredores`
GROUP BY ciudad
ORDER BY premios_totales DESC;

-- 5. Corredores con más de 500 puntos
SELECT COUNT(*) AS total,
       SUM(premios) AS premios_total,
       AVG(carreras) AS carreras_prom
FROM `ejercicio-010-bas-corredores`
WHERE puntos > 500;