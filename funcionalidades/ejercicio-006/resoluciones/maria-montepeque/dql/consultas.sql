-- funcionalidades/ejercicio-006 - maria-montepeque
USE campuslands_mysql;

-- 1. ANTES: filtrar por anio_estreno sin indice -> recorrido completo (type=ALL)
EXPLAIN SELECT * FROM entregas_saga WHERE anio_estreno = 1984;

-- 2. Se crea el indice y se repite la misma consulta
CREATE INDEX idx_anio_estreno ON entregas_saga (anio_estreno);

-- 3. DESPUES: MySQL ahora usa idx_anio_estreno (type=ref, rows=3 en vez de 37)
EXPLAIN SELECT * FROM entregas_saga WHERE anio_estreno = 1984;

-- 4. EXPLAIN de un JOIN: dos filas en el resultado, una por tabla involucrada.
-- "id" es igual en ambas (mismo bloque de consulta). MySQL elige entregas_saga como
-- tabla conductora (type=ALL) y hace un "eq_ref" contra sagas_ciencia_ficcion.id
-- (busqueda por PRIMARY KEY, 1 fila por cada vuelta del bucle).
EXPLAIN SELECT s.nombre_saga, e.titulo, e.anio_estreno
FROM entregas_saga e
    JOIN sagas_ciencia_ficcion s ON s.id = e.saga_id
ORDER BY e.anio_estreno;

-- 5. Subconsulta con IN vs el mismo filtro escrito como JOIN: MySQL "aplana" el IN
-- (semi-join) y termina generando el mismo plan que el JOIN explicito. select_type
-- se mantiene como SIMPLE en ambos casos, no aparece como SUBQUERY aparte.
EXPLAIN SELECT titulo
FROM entregas_saga
WHERE saga_id IN (
    SELECT id FROM sagas_ciencia_ficcion WHERE universo = 'Ciberpunk'
);

EXPLAIN SELECT e.titulo
FROM entregas_saga e
    JOIN sagas_ciencia_ficcion s ON s.id = e.saga_id
WHERE s.universo = 'Ciberpunk';

-- 6. FORMAT=TREE: el mismo plan del paso 4 (filtrado por Space Opera) pero legible
-- como arbol, con el costo ESTIMADO de cada paso. No ejecuta la consulta.
EXPLAIN FORMAT=TREE
SELECT s.nombre_saga, e.titulo, e.anio_estreno
FROM entregas_saga e
    JOIN sagas_ciencia_ficcion s ON s.id = e.saga_id
WHERE s.universo = 'Space Opera'
ORDER BY e.anio_estreno;

-- 7. EXPLAIN ANALYZE: SI ejecuta la consulta y agrega tiempos y filas REALES
-- (actual time=..., rows=...) junto al costo estimado de cada nodo del arbol.
EXPLAIN ANALYZE
SELECT s.nombre_saga, e.titulo, e.anio_estreno
FROM entregas_saga e
    JOIN sagas_ciencia_ficcion s ON s.id = e.saga_id
WHERE s.universo = 'Space Opera'
ORDER BY e.anio_estreno;
