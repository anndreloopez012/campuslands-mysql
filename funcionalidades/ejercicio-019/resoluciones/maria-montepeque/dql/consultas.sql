-- funcionalidades/ejercicio-019 - maria-montepeque
--
-- "Backup y restore" no es solo SQL: mysqldump y la restauracion se manejan
-- desde la terminal, no desde un archivo .sql corrido de punta a punta. Este
-- archivo documenta la secuencia completa; los comandos de shell quedan como
-- comentario justo donde ocurren, y las consultas SQL reales (las que si se
-- pueden correr con "mysql < archivo") validan el resultado en cada paso.
-- La salida real de TODO (incluyendo los comandos de shell) esta en
-- evidencias/resultados_consultas.txt.

USE campuslands_mysql;

-- 1. Estado ANTES del backup: 5 partidas, 10 objetos.
SELECT COUNT(*) AS total_partidas FROM partidas_guardadas;
SELECT COUNT(*) AS total_objetos FROM objetos_recolectados;

-- 2. Backup completo (estructura + datos) de las 2 tablas del juego.
-- Se corre en la terminal, no en MySQL:
--
-- docker exec -i campuslands-mysql-db mysqldump -u campus -pcampus123 --no-tablespaces \
--   campuslands_mysql partidas_guardadas objetos_recolectados > evidencias/backup_completo.sql

-- 3. DESASTRE simulado: se borran las 2 tablas por completo (como si el save
-- del jugador se hubiera corrompido).
DROP TABLE objetos_recolectados;
DROP TABLE partidas_guardadas;

-- 4. Se confirma que ya no existen.
SHOW TABLES LIKE 'partidas_guardadas';
SHOW TABLES LIKE 'objetos_recolectados';

-- 5. RESTORE: se recrean las tablas y se reinsertan los datos leyendo el
-- backup del paso 2. Tambien se corre desde la terminal:
--
-- docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < evidencias/backup_completo.sql

-- 6. Estado DESPUES del restore: debe ser identico al paso 1.
SELECT COUNT(*) AS total_partidas FROM partidas_guardadas;
SELECT COUNT(*) AS total_objetos FROM objetos_recolectados;
SELECT jugador, nivel_actual, ubicacion FROM partidas_guardadas ORDER BY id;

-- 7. Backup PARCIAL con --where: solo el progreso de un jugador especifico
-- (util para "exportar mi propio save", no toda la base).
--
-- docker exec -i campuslands-mysql-db mysqldump -u campus -pcampus123 --no-tablespaces \
--   --where="jugador='Kaelen Voss'" campuslands_mysql partidas_guardadas > evidencias/backup_solo_kaelen.sql

-- 8. Backup de SOLO ESTRUCTURA (--no-data): util para clonar el esquema del
-- juego en otro ambiente sin arrastrar partidas guardadas reales.
--
-- docker exec -i campuslands-mysql-db mysqldump -u campus -pcampus123 --no-tablespaces \
--   --no-data campuslands_mysql partidas_guardadas objetos_recolectados > evidencias/backup_solo_estructura.sql
