USE db_dibujo_digital;

-- Consulta 1: Filtrar proyectos que se encuentren estrictamente en estado 'completado' ordenados por precio de comisión de mayor a menor
SELECT id, titulo_obra, software_usado, capas_totales, tiempo_horas, precio_comision_usd, estado
FROM proyectos_dibujo
WHERE estado = 'completado'
ORDER BY precio_comision_usd DESC;

-- Consulta 2: Filtrar proyectos que requirieron más de 15 horas de trabajo utilizando operadores lógicos en el WHERE
SELECT titulo_obra, software_usado, tiempo_horas, precio_comision_usd, estado
FROM proyectos_dibujo
WHERE tiempo_horas > 15.0
ORDER BY tiempo_horas DESC;

-- Consulta 3: Filtrar obras cuyo software sea 'Procreate' o 'Photoshop' y tengan un precio superior a 100 USD
SELECT titulo_obra, software_usado, capas_totales, precio_comision_usd, estado
FROM proyectos_dibujo
WHERE software_usado IN ('Procreate', 'Photoshop') AND precio_comision_usd > 100.00
ORDER BY precio_comision_usd ASC;

-- Consulta 4: Resumen agrupado por software utilizado, mostrando cuántos proyectos hay y el promedio de capas empleadas
SELECT software_usado, COUNT(*) AS total_proyectos, ROUND(AVG(capas_totales), 1) AS promedio_capas
FROM proyectos_dibujo
GROUP BY software_usado
ORDER BY total_proyectos DESC;

-- Consulta 5: Resumen global evaluando la cantidad total de proyectos filtrados por un estado activo ('completado' o 'en_progreso'), sumando las horas invertidas
SELECT COUNT(*) AS proyectos_activos, SUM(tiempo_horas) AS horas_totales_invertidas, MAX(precio_comision_usd) AS comision_maxima_usd
FROM proyectos_dibujo
WHERE estado IN ('completado', 'en_progreso');