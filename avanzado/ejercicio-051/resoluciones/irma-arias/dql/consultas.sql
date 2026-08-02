USE dibujo_digital_db;

-- 1. Filtrar obras publicadas con calificación mayor o igual a 9.0 ordenadas por precio
SELECT titulo_obra, software_utilizado, calificacion, precio_comision
FROM obras_digitales
WHERE estado = 'publicado' AND calificacion >= 9.0
ORDER BY precio_comision DESC;

-- 2. Conteo de obras y costo promedio agrupadas por software (solo publicadas)
SELECT software_utilizado, COUNT(*) AS total_obras, AVG(precio_comision) AS precio_promedio
FROM obras_digitales
WHERE estado = 'publicado'
GROUP BY software_utilizado
ORDER BY total_obras DESC;

-- 3. Ranking TOP 3 de las obras digitales más costosas
SELECT titulo_obra, software_utilizado, precio_comision
FROM obras_digitales
ORDER BY precio_comision DESC
LIMIT 3;

-- 4. Filtrar obras que requirieron más de 15 horas de trabajo utilizando Photoshop o Procreate
SELECT titulo_obra, software_utilizado, horas_trabajo
FROM obras_digitales
WHERE horas_trabajo > 15 AND software_utilizado IN ('Photoshop', 'Procreate')
ORDER BY horas_trabajo DESC;

-- 5. Conteo de proyectos según su estado actual
SELECT estado, COUNT(*) AS cantidad_proyectos
FROM obras_digitales
GROUP BY estado;
