-- Vista 1: Películas clásicas (antes de 2000)
CREATE VIEW `v_clasicas` AS
SELECT titulo, director, fecha_estreno, calificacion
FROM `ejercicio-014-int-peliculas`
WHERE YEAR(fecha_estreno) < 2000
ORDER BY fecha_estreno;

-- Vista 2: Películas modernas (2000 en adelante)
CREATE VIEW `v_modernas` AS
SELECT titulo, director, fecha_estreno, presupuesto, calificacion
FROM `ejercicio-014-int-peliculas`
WHERE YEAR(fecha_estreno) >= 2000
ORDER BY calificacion DESC;

-- Vista 3: Películas con alta calificación (>4.5)
CREATE VIEW `v_mejores_calificadas` AS
SELECT titulo, director, fecha_estreno, calificacion
FROM `ejercicio-014-int-peliculas`
WHERE calificacion > 4.5
ORDER BY calificacion DESC;

-- Vista 4: Películas de George Lucas
CREATE VIEW `v_lucas` AS
SELECT titulo, fecha_estreno, duracion, calificacion
FROM `ejercicio-014-int-peliculas`
WHERE director = 'George Lucas'
ORDER BY fecha_estreno;

-- Vista 5: Películas con remasterización
CREATE VIEW `v_remasterizadas` AS
SELECT titulo, director, fecha_estreno, fecha_remasterizacion,
       DATEDIFF(fecha_remasterizacion, fecha_estreno) AS dias_diferencia
FROM `ejercicio-014-int-peliculas`
WHERE fecha_remasterizacion IS NOT NULL;

-- Consultar vistas
SELECT * FROM `v_clasicas`;
SELECT * FROM `v_modernas`;
SELECT * FROM `v_mejores_calificadas`;
SELECT * FROM `v_lucas`;
SELECT * FROM `v_remasterizadas`;