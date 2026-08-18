USE campuslands_mysql;

-- 1. CTE recursivo: arbol completo de talentos, con su profundidad y
-- la ruta completa desde la raiz de su clase.
WITH RECURSIVE arbol_talentos AS (
  SELECT id_talento, nombre, clase, nivel_requerido, id_talento_previo,
         0 AS profundidad,
         CAST(nombre AS CHAR(500)) AS ruta
  FROM talentos_avanzado
  WHERE id_talento_previo IS NULL

  UNION ALL

  SELECT t.id_talento, t.nombre, t.clase, t.nivel_requerido, t.id_talento_previo,
         a.profundidad + 1,
         CONCAT(a.ruta, ' -> ', t.nombre)
  FROM talentos_avanzado t
  INNER JOIN arbol_talentos a ON a.id_talento = t.id_talento_previo
)
SELECT clase, profundidad, nombre, nivel_requerido, ruta
FROM arbol_talentos
ORDER BY clase, profundidad;

-- 2. CTE recursivo: cadena de prerequisitos de un talento especifico,
-- subiendo hasta la raiz (recorrido ascendente, no descendente).
WITH RECURSIVE cadena_prerequisitos AS (
  SELECT id_talento, nombre, nivel_requerido, id_talento_previo, 0 AS pasos_hacia_atras
  FROM talentos_avanzado
  WHERE nombre = 'Furia Imparable'

  UNION ALL

  SELECT t.id_talento, t.nombre, t.nivel_requerido, t.id_talento_previo, c.pasos_hacia_atras + 1
  FROM talentos_avanzado t
  INNER JOIN cadena_prerequisitos c ON t.id_talento = c.id_talento_previo
)
SELECT nombre, nivel_requerido, pasos_hacia_atras
FROM cadena_prerequisitos
ORDER BY pasos_hacia_atras DESC;

-- 3. CTE recursivo generador de secuencia: tabla de experiencia
-- requerida por nivel, calculada con una formula acumulativa (no es
-- un recorrido de arbol, sino una progresion numerica).
WITH RECURSIVE tabla_experiencia AS (
  SELECT 1 AS nivel, 100 AS xp_requerida
  UNION ALL
  SELECT nivel + 1, xp_requerida + (nivel * 50)
  FROM tabla_experiencia
  WHERE nivel < 10
)
SELECT nivel, xp_requerida
FROM tabla_experiencia;

-- 4. CTE simple: cantidad de talentos por clase
WITH resumen_por_clase AS (
  SELECT clase, COUNT(*) AS total_talentos
  FROM talentos_avanzado
  GROUP BY clase
)
SELECT clase, total_talentos
FROM resumen_por_clase
ORDER BY total_talentos DESC;

-- 5. CTE simple: talentos finales (hojas del arbol, ninguna otra
-- talento los tiene como prerequisito).
WITH prerequisitos_usados AS (
  SELECT DISTINCT id_talento_previo AS id_talento
  FROM talentos_avanzado
  WHERE id_talento_previo IS NOT NULL
)
SELECT t.nombre, t.clase, t.nivel_requerido
FROM talentos_avanzado t
LEFT JOIN prerequisitos_usados p ON p.id_talento = t.id_talento
WHERE p.id_talento IS NULL
ORDER BY t.clase;

-- 6. Varios CTE encadenados: talentos raiz y su cantidad de
-- descendientes directos, combinando dos CTE en una sola consulta.
WITH raices AS (
  SELECT id_talento, nombre, clase
  FROM talentos_avanzado
  WHERE id_talento_previo IS NULL
),
descendientes_directos AS (
  SELECT id_talento_previo AS id_talento, COUNT(*) AS total_hijos
  FROM talentos_avanzado
  WHERE id_talento_previo IS NOT NULL
  GROUP BY id_talento_previo
)
SELECT r.nombre AS talento_raiz, r.clase, COALESCE(d.total_hijos, 0) AS hijos_directos
FROM raices r
LEFT JOIN descendientes_directos d ON d.id_talento = r.id_talento
ORDER BY hijos_directos DESC;
