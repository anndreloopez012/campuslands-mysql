-- funcionalidades/ejercicio-005 - maria-montepeque
USE campuslands_mysql;

-- La tabla tiene 2000 peliculas. Solo 2 tienen director = 'Wes Craven'.

-- 1. ANTES: buscar por director sin indice -> recorrido completo de la tabla
EXPLAIN SELECT * FROM peliculas_terror WHERE director = 'Wes Craven';

-- 2. ANTES: ordenar por calificacion sin indice -> "Using filesort"
EXPLAIN SELECT titulo, calificacion FROM peliculas_terror ORDER BY calificacion DESC LIMIT 10;

-- 3. Se crean los indices
CREATE INDEX idx_director ON peliculas_terror (director);
CREATE INDEX idx_calificacion ON peliculas_terror (calificacion);
CREATE INDEX idx_subgenero_calificacion ON peliculas_terror (subgenero, calificacion);

ANALYZE TABLE peliculas_terror;

-- 4. DESPUES: la misma busqueda por director ahora usa idx_director (type=ref, rows=2)
EXPLAIN SELECT * FROM peliculas_terror WHERE director = 'Wes Craven';

-- 5. DESPUES: el mismo ORDER BY ahora recorre el indice en reversa, sin filesort
EXPLAIN SELECT titulo, calificacion FROM peliculas_terror ORDER BY calificacion DESC LIMIT 10;

-- 6. Indice compuesto: filtra por subgenero Y ordena por calificacion en una sola pasada de indice
EXPLAIN SELECT titulo, calificacion
FROM peliculas_terror
WHERE subgenero = 'Slasher'
ORDER BY calificacion DESC;

-- 7. Listado final de todos los indices de la tabla (PRIMARY + los 3 creados)
SHOW INDEX FROM peliculas_terror;
