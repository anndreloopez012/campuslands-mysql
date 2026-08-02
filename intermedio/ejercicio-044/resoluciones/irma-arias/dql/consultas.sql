USE saga_ciencia_ficcion_db;

-- 1. Consultar directamente la vista simple de películas del canon galáctico ordenadas por calificación crítica de forma descendente
SELECT * FROM vw_peliculas_canon
ORDER BY calificacion_critica DESC;

-- 2. Consultar la vista simple de producciones con alto presupuesto (>= 150 millones) ordenadas de mayor a menor inversión
SELECT * FROM vw_presupuesto_alto
ORDER BY presupuesto_millones DESC;

-- 3. Informe analítico agrupado por Facción: Calcular la cantidad de producciones y el presupuesto promedio invertido por cada facción
SELECT f.nombre_faccion, f.lider_faccion, COUNT(p.id_pelicula) AS total_producciones, ROUND(AVG(p.presupuesto_millones), 2) AS presupuesto_promedio_millones
FROM facciones f
JOIN peliculas_saga p ON f.id_faccion = p.id_faccion
GROUP BY f.id_faccion, f.nombre_faccion, f.lider_faccion
ORDER BY total_producciones DESC;

-- 4. Informe agrupado por Sistema Estelar: Evaluar el impacto de cada sector calculando el total de películas y la calificación crítica máxima
SELECT s.nombre_sistema, s.sector_galactico, COUNT(p.id_pelicula) AS total_peliculas, MAX(p.calificacion_critica) AS mejor_calificacion
FROM sistemas_estelares s
JOIN peliculas_saga p ON s.id_sistema = p.id_sistema
GROUP BY s.id_sistema, s.nombre_sistema, s.sector_galactico
ORDER BY mejor_calificacion DESC;

-- 5. Ranking TOP 3 de las películas de ciencia ficción mejor calificadas de toda la saga integrando sus sistemas estelares y facciones
SELECT p.titulo_pelicula, s.nombre_sistema, f.nombre_faccion, p.calificacion_critica
FROM peliculas_saga p
JOIN sistemas_estelares s ON p.id_sistema = s.id_sistema
JOIN facciones f ON p.id_faccion = f.id_faccion
ORDER BY p.calificacion_critica DESC
LIMIT 3;
