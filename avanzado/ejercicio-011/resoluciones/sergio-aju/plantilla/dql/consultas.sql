-- Consultas base adaptadas con CTEs.
USE campuslands_mysql;

-- Consulta 1: Vista general de todos los registros
SELECT * FROM avanzado_ejercicio_011;


-- Consulta 2: Resumen agrupado por categoría (heredado de la plantilla)
SELECT categoria, COUNT(*) AS total_registros, AVG(puntaje) AS promedio
FROM avanzado_ejercicio_011
GROUP BY categoria
ORDER BY promedio DESC;


-- Consulta 3: Uso de CTE para obtener el ranking de participantes con puntaje superior al promedio general
WITH promedio_general AS (
    SELECT AVG(puntaje) AS media_puntaje FROM avanzado_ejercicio_011
),
participantes_destacados AS (
    SELECT nombre, categoria, puntaje, estado
    FROM avanzado_ejercicio_011
    WHERE estado = 'activo'
)
SELECT 
    p.nombre, 
    p.categoria, 
    p.puntaje, 
    ROUND(mg.media_puntaje, 2) AS media_general
FROM participantes_destacados p
CROSS JOIN promedio_general mg
WHERE p.puntaje > mg.media_puntaje
ORDER BY p.puntaje DESC;


-- Consulta 4: Uso de CTE para filtrar los mejores puntajes (Top 3) por categoría usando funciones de ventana
WITH ranking_por_categoria AS (
    SELECT 
        nombre,
        categoria,
        puntaje,
        estado,
        ROW_NUMBER() OVER(PARTITION BY categoria ORDER BY puntaje DESC) AS ranking
    FROM avanzado_ejercicio_011
)
SELECT 
    categoria,
    nombre,
    puntaje,
    estado,
    ranking
FROM ranking_por_categoria
WHERE ranking <= 3;


-- Consulta 5: Uso de CTE para calcular estadísticas avanzadas de puntaje por estado
With estadisticas_estado AS (
    SELECT 
        estado,
        COUNT(*) AS total_participantes,
        SUM(puntaje) AS puntaje_acumulado,
        MAX(puntaje) AS puntaje_maximo
    FROM avanzado_ejercicio_011
    GROUP BY estado
)
SELECT 
    estado,
    total_participantes,
    puntaje_acumulado,
    puntaje_maximo
FROM estadisticas_estado
ORDER BY puntaje_acumulado DESC;