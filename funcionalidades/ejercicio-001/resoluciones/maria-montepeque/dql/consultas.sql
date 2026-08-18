USE campuslands_mysql;

-- ===================================================================
-- Verificacion de la DEMOSTRACION 2 (transacciones): el ROLLBACK
-- revierte de verdad en InnoDB, pero no en MyISAM.
-- Resultado real esperado: innodb = 20 (se revirtio), myisam = 15
-- (el ROLLBACK no tuvo efecto).
-- ===================================================================
SELECT 'innodb' AS motor, stock
FROM inventario_gym_innodb_demo WHERE id_item = 1
UNION ALL
SELECT 'myisam', stock
FROM inventario_gym_myisam_demo WHERE id_item = 1;

-- ===================================================================
-- Verificacion de la DEMOSTRACION 1 (claves foraneas): confirma que
-- el luchador con id_gimnasio = 99 (que no existe en
-- gimnasios_innodb_demo) SI quedo guardado en la tabla MyISAM.
-- ===================================================================
SELECT id_luchador, id_gimnasio, nombre
FROM luchadores_myisam_demo
WHERE id_gimnasio = 99;

-- Motor real de cada tabla, para confirmar que la comparacion es
-- justa (misma estructura, distinto ENGINE).
SELECT TABLE_NAME, ENGINE
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = 'campuslands_mysql'
  AND TABLE_NAME IN (
    'gimnasios_innodb_demo', 'luchadores_innodb_demo', 'luchadores_myisam_demo',
    'inventario_gym_innodb_demo', 'inventario_gym_myisam_demo'
  )
ORDER BY TABLE_NAME;

-- Estado completo de ambas tablas de luchadores, para ver de un
-- vistazo que la fila "fantasma" solo existe en la version MyISAM.
SELECT 'innodb' AS motor, nombre, id_gimnasio FROM luchadores_innodb_demo
UNION ALL
SELECT 'myisam', nombre, id_gimnasio FROM luchadores_myisam_demo
ORDER BY motor, nombre;

-- Consulta normal de negocio, aprovechando que las FK de InnoDB
-- garantizan que todo luchador tiene un gimnasio real: no hace falta
-- LEFT JOIN ni COALESCE para cubrir gimnasios inexistentes.
SELECT g.nombre AS gimnasio, l.nombre AS luchador, l.victorias, l.derrotas
FROM luchadores_innodb_demo l
INNER JOIN gimnasios_innodb_demo g ON g.id_gimnasio = l.id_gimnasio
ORDER BY g.nombre, l.victorias DESC;

-- ===================================================================
-- Nota sobre la DEMOSTRACION 3 (bloqueo por filas): esta parte
-- requiere DOS conexiones simultaneas de verdad (una que mantenga un
-- bloqueo abierto mientras la otra intenta escribir), asi que no se
-- puede reproducir dentro de un unico script secuencial como este.
-- El procedimiento exacto que se ejecuto y el resultado real obtenido
-- quedan documentados paso a paso en README.md.
-- ===================================================================
