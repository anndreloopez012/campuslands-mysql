USE campuslands_mysql;

-- 1. Extraer el usuario de GitHub de cada alumno (->>)
SELECT nombre, perfil ->> '$.contacto.github' AS usuario_github
FROM alumnos_perfil_avanzado
ORDER BY nombre;

-- 2. Alumnos que tienen "Python" entre sus habilidades (JSON_CONTAINS)
SELECT nombre, programa
FROM alumnos_perfil_avanzado
WHERE JSON_CONTAINS(perfil -> '$.habilidades', '"Python"')
ORDER BY nombre;

-- 3. Expandir el arreglo de habilidades en filas individuales (JSON_TABLE)
SELECT a.nombre, h.habilidad
FROM alumnos_perfil_avanzado a,
JSON_TABLE(
  a.perfil, '$.habilidades[*]'
  COLUMNS (habilidad VARCHAR(60) PATH '$')
) AS h
ORDER BY a.nombre, h.habilidad;

-- 4. Cantidad de habilidades y de proyectos por alumno (JSON_LENGTH)
SELECT nombre,
       JSON_LENGTH(perfil -> '$.habilidades') AS total_habilidades,
       JSON_LENGTH(perfil -> '$.proyectos') AS total_proyectos
FROM alumnos_perfil_avanzado
ORDER BY total_habilidades DESC;

-- 5. Alumnos con mas de un proyecto registrado
SELECT nombre, JSON_LENGTH(perfil -> '$.proyectos') AS total_proyectos
FROM alumnos_perfil_avanzado
WHERE JSON_LENGTH(perfil -> '$.proyectos') > 1
ORDER BY total_proyectos DESC;

-- 6. Confirmar que a Andres Puentes se le agrego el proyecto con JSON_ARRAY_APPEND
SELECT nombre, JSON_PRETTY(perfil -> '$.proyectos') AS proyectos
FROM alumnos_perfil_avanzado
WHERE nombre = 'Andres Puentes';

-- 7. Expandir proyectos (objetos anidados dentro de un arreglo) con JSON_TABLE
SELECT a.nombre, p.proyecto, p.tecnologia
FROM alumnos_perfil_avanzado a,
JSON_TABLE(
  a.perfil, '$.proyectos[*]'
  COLUMNS (
    proyecto VARCHAR(120) PATH '$.nombre',
    tecnologia VARCHAR(80) PATH '$.tecnologia'
  )
) AS p
ORDER BY a.nombre;
