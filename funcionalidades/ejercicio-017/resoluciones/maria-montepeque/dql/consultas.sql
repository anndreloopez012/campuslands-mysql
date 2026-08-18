-- funcionalidades/ejercicio-017 - maria-montepeque
USE campuslands_mysql;

-- 1. ANTES: buscar texto con LIKE. Funciona, pero no da ninguna nocion de
-- "que tan bien" encaja cada fila, y el EXPLAIN muestra un recorrido
-- completo de la tabla (ningun indice normal puede ayudar con '%...%').
SELECT nombre, descripcion FROM formulas_quimicas
WHERE descripcion LIKE '%solvente%' OR descripcion LIKE '%sintesis%';

EXPLAIN SELECT nombre FROM formulas_quimicas
WHERE descripcion LIKE '%solvente%' OR descripcion LIKE '%sintesis%';

-- 2. Se crea el indice FULLTEXT sobre nombre + descripcion.
CREATE FULLTEXT INDEX ft_formula ON formulas_quimicas (nombre, descripcion);

-- 3. DESPUES: MATCH ... AGAINST en modo lenguaje natural (por defecto). Cada
-- fila trae un puntaje de relevancia (mas alto = mejor coincidencia) y se
-- puede ordenar por el.
SELECT
    nombre,
    MATCH(nombre, descripcion) AGAINST('solvente sintesis') AS relevancia
FROM formulas_quimicas
WHERE MATCH(nombre, descripcion) AGAINST('solvente sintesis')
ORDER BY relevancia DESC;

-- 4. El mismo tipo de busqueda, pero en EXPLAIN: ahora aparece 'fulltext'
-- como tipo de acceso, usando el indice ft_formula en vez de recorrer todo.
EXPLAIN SELECT nombre FROM formulas_quimicas
WHERE MATCH(nombre, descripcion) AGAINST('+solvente' IN BOOLEAN MODE);

-- 5. BOOLEAN MODE con '+' (obligatorio) y '-' (excluido): formulas que
-- mencionan 'acido' pero NO 'sodio'.
SELECT nombre, categoria FROM formulas_quimicas
WHERE MATCH(nombre, descripcion) AGAINST('+acido -sodio' IN BOOLEAN MODE);

-- 6. BOOLEAN MODE con frase EXACTA (comillas dentro del argumento).
SELECT nombre FROM formulas_quimicas
WHERE MATCH(nombre, descripcion) AGAINST('"aguas residuales"' IN BOOLEAN MODE);

-- 7. BOOLEAN MODE con comodin '*': encuentra 'disolvente' Y 'disolverse'
-- con una sola palabra raiz.
SELECT nombre FROM formulas_quimicas
WHERE MATCH(nombre, descripcion) AGAINST('disolv*' IN BOOLEAN MODE);

-- 8. "Gotcha" real de Full Text Search: innodb_ft_min_token_size (por
-- defecto 3) ignora palabras mas cortas. 'pH' aparece literalmente en la
-- descripcion de FQ-011, pero por tener solo 2 letras NUNCA se indexo, asi
-- que esta busqueda no encuentra nada aunque la palabra este en el texto.
SHOW VARIABLES LIKE 'innodb_ft_min_token_size';

SELECT nombre FROM formulas_quimicas
WHERE MATCH(nombre, descripcion) AGAINST('+pH' IN BOOLEAN MODE);
