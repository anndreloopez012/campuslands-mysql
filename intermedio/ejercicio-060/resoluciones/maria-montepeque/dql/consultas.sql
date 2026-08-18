USE campuslands_mysql;

-- 1. Comparacion cruda vs limpia: cuantas filas entraron y cuantas sobrevivieron
SELECT
  (SELECT COUNT(*) FROM creadores_staging_intermedio) AS filas_crudas,
  (SELECT COUNT(*) FROM creadores_intermedio) AS filas_limpias_finales;

-- 2. Listado final ya limpio y validado
SELECT nombre_canal, categoria, seguidores, pais
FROM creadores_intermedio
ORDER BY seguidores DESC;

-- 3. Creadores por categoria
SELECT categoria, COUNT(*) AS total
FROM creadores_intermedio
GROUP BY categoria
ORDER BY total DESC;

-- 4. Creador con mas seguidores
SELECT nombre_canal, seguidores
FROM creadores_intermedio
ORDER BY seguidores DESC
LIMIT 1;

-- 5. Confirmar que no quedo ningun nombre_canal duplicado en la tabla final
SELECT nombre_canal, COUNT(*) AS repeticiones
FROM creadores_intermedio
GROUP BY nombre_canal
HAVING COUNT(*) > 1;

-- 6. Filas de staging que fueron descartadas durante la limpieza (auditoria del proceso)
SELECT nombre_canal, categoria, seguidores, pais
FROM creadores_staging_intermedio
WHERE TRIM(nombre_canal) = '' OR TRIM(seguidores) NOT REGEXP '^[0-9]+$';
