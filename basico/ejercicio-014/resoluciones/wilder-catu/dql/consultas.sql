
USE campuslands_mysql;

-- 1. Mostrar todas las películas con su fecha de estreno
SELECT
    titulo AS Pelicula,
    fecha_estreno AS Estreno
FROM saga_ciencia_ficcion
ORDER BY fecha_estreno;

-- 2. Películas estrenadas después del año 2015
SELECT
    titulo,
    fecha_estreno
FROM saga_ciencia_ficcion
WHERE fecha_estreno > '2015-12-31';

-- 3. Películas estrenadas entre 2000 y 2024
SELECT
    titulo,
    fecha_estreno
FROM saga_ciencia_ficcion
WHERE fecha_estreno BETWEEN '2000-01-01' AND '2024-12-31'
ORDER BY fecha_estreno;

-- 4. Películas que se estrenan próximamente
SELECT
    titulo,
    fecha_estreno,
    estado
FROM saga_ciencia_ficcion
WHERE estado = 'Próximamente';

-- 5. Año de estreno de cada película
SELECT
    titulo,
    YEAR(fecha_estreno) AS Anio_Estreno
FROM saga_ciencia_ficcion
ORDER BY Anio_Estreno;

-- 6. Cantidad de películas por año de estreno
SELECT
    YEAR(fecha_estreno) AS Anio,
    COUNT(*) AS Total_Peliculas
FROM saga_ciencia_ficcion
GROUP BY YEAR(fecha_estreno)
ORDER BY Anio;