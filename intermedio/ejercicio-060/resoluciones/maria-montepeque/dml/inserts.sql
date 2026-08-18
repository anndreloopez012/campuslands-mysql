-- Carga de datos: primero aterrizan los datos crudos (con espacios,
-- mayusculas inconsistentes y duplicados, como llegarian de un CSV
-- real) y luego se limpian hacia la tabla final con INSERT ... SELECT.
--
-- Nota sobre LOAD DATA INFILE: la forma "clasica" de cargar un CSV
-- masivo seria
--   LOAD DATA INFILE '/var/lib/mysql-files/creadores.csv'
--   INTO TABLE creadores_staging_intermedio
--   FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';
-- pero eso requiere el privilegio FILE, que el usuario 'campus' del
-- docker-compose de este repo NO tiene (solo tiene ALL PRIVILEGES
-- sobre el esquema, no privilegios globales). Lo confirme al probarlo:
--   ERROR 1045 (28000): Access denied for user 'campus'@'%'
-- Como root si funciona (root tiene el privilegio FILE), pero para
-- mantener esta resolucion ejecutable con el usuario normal del
-- proyecto, la carga masiva se hace con INSERT multi-fila + limpieza
-- via INSERT ... SELECT, que es igual de valido para practicar el
-- flujo de "carga de datos" (staging -> validacion -> tabla final).
USE campuslands_mysql;

INSERT INTO creadores_staging_intermedio (nombre_canal, categoria, seguidores, pais) VALUES
(' MidnightPlays ', 'JUEGOS', '132000', 'Colombia'),
('inkandcanvas', 'arte', '51000', 'Mexico'),
('MidnightPlays', 'Juegos', '132000', 'Colombia'),
('  LoFiLoungeRadio', 'musica', '', 'Argentina'),
('DevWithSara', 'Programacion', '35000', 'Peru'),
('inkandcanvas ', 'Arte', '51000', 'Mexico'),
('', 'juegos', '8000', 'Chile'),
('RetroGlitchTV', 'juegos', '72000', 'Colombia'),
('DevWithSara', 'programacion', '35000', 'Peru');

-- Limpieza y carga hacia la tabla final:
-- - TRIM quita espacios sueltos.
-- - LOWER normaliza la categoria para que calce con el ENUM.
-- - CAST convierte el texto a numero.
-- - DISTINCT colapsa los duplicados que quedaron identicos tras limpiar.
-- - El WHERE descarta filas con nombre vacio o seguidores no numericos.
INSERT INTO creadores_intermedio (nombre_canal, categoria, seguidores, pais)
SELECT DISTINCT
  TRIM(nombre_canal),
  LOWER(TRIM(categoria)),
  CAST(TRIM(seguidores) AS UNSIGNED),
  TRIM(pais)
FROM creadores_staging_intermedio
WHERE TRIM(nombre_canal) <> ''
  AND TRIM(seguidores) REGEXP '^[0-9]+$';
