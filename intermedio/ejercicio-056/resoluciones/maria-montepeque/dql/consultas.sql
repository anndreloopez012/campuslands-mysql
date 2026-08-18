USE campuslands_mysql;

-- 1. Listado completo del catalogo de objetos
SELECT nombre, tipo, nivel_requerido, precio, danio, defensa, curacion
FROM objetos_intermedio
ORDER BY tipo, nivel_requerido;

-- 2. Armas ordenadas por daño
SELECT nombre, nivel_requerido, danio
FROM objetos_intermedio
WHERE tipo = 'arma'
ORDER BY danio DESC;

-- 3. Pociones ordenadas por curacion
SELECT nombre, precio, curacion
FROM objetos_intermedio
WHERE tipo = 'pocion'
ORDER BY curacion DESC;

-- 4. Objetos accesibles para un aventurero de nivel 10
SELECT nombre, tipo, nivel_requerido
FROM objetos_intermedio
WHERE nivel_requerido <= 10
ORDER BY nivel_requerido DESC;

-- 5. Precio promedio por tipo de objeto
SELECT tipo, COUNT(*) AS total_objetos, AVG(precio) AS precio_promedio
FROM objetos_intermedio
GROUP BY tipo
ORDER BY precio_promedio DESC;

-- 6. Objeto mas caro de cada tipo
SELECT o.tipo, o.nombre, o.precio
FROM objetos_intermedio o
WHERE o.precio = (
  SELECT MAX(o2.precio) FROM objetos_intermedio o2 WHERE o2.tipo = o.tipo
)
ORDER BY o.precio DESC;

-- Nota de validacion manual: el CHECK cruzado impide mezclar
-- estadisticas de otro tipo. Por ejemplo:
--   INSERT INTO objetos_intermedio (nombre, tipo, nivel_requerido, precio, danio, defensa, curacion)
--   VALUES ('Espada Falsa', 'arma', 3, 50, 20, 10, NULL);
-- da: ERROR 3819 (HY000): Check constraint
-- 'chk_objetos_intermedio_stats_por_tipo' is violated (un arma no
-- puede tener defensa). No se ejecuta aqui para no interrumpir el
-- script.
