-- funcionalidades/ejercicio-005 - maria-montepeque
USE campuslands_mysql;

-- Peliculas "reales" del catalogo (12 filas). director='Wes Craven' aparece solo 2 veces:
-- eso es lo que despues hace visible la diferencia de un indice en una tabla grande.
INSERT INTO peliculas_terror
    (titulo, director, subgenero, anio_estreno, duracion_minutos, calificacion)
VALUES
    ('El Exorcista', 'William Friedkin', 'Posesion', 1973, 122, 8.1),
    ('Halloween', 'John Carpenter', 'Slasher', 1978, 91, 7.7),
    ('Pesadilla en la Calle del Infierno', 'Wes Craven', 'Slasher', 1984, 91, 7.4),
    ('Scream', 'Wes Craven', 'Slasher', 1996, 111, 7.3),
    ('La Bruja', 'Robert Eggers', 'Folk Horror', 2015, 92, 6.9),
    ('Hereditario', 'Ari Aster', 'Terror Psicologico', 2018, 127, 7.3),
    ('It Follows', 'David Robert Mitchell', 'Slasher', 2014, 100, 6.8),
    ('La Cosa', 'John Carpenter', 'Ciencia Ficcion', 1982, 109, 8.2),
    ('El Aro', 'Gore Verbinski', 'Terror Paranormal', 2002, 115, 7.1),
    ('Posesion Infernal', 'Sam Raimi', 'Gore', 1981, 85, 7.4),
    ('Insidious', 'James Wan', 'Terror Paranormal', 2010, 103, 6.8),
    ('La Monja', 'Corin Hardy', 'Terror Paranormal', 2018, 96, 5.6);

-- Relleno masivo (1988 filas) para que la tabla sea lo bastante grande y el optimizador
-- de MySQL prefiera un indice en vez de un recorrido completo. Todas usan
-- director='Director Generico', asi 'Wes Craven' se vuelve un valor muy poco frecuente.
SET SESSION cte_max_recursion_depth = 2000;

INSERT INTO peliculas_terror
    (titulo, director, subgenero, anio_estreno, duracion_minutos, calificacion)
WITH RECURSIVE secuencia AS (
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1 FROM secuencia WHERE n < 1988
)
SELECT
    CONCAT('Pelicula de Relleno #', n),
    'Director Generico',
    ELT(1 + (n % 8),
        'Slasher', 'Terror Paranormal', 'Gore', 'Posesion',
        'Folk Horror', 'Terror Psicologico', 'Ciencia Ficcion', 'Found Footage'),
    1970 + (n % 55),
    80 + (n % 40),
    ROUND(4 + (n % 30) / 10, 1)
FROM secuencia;
