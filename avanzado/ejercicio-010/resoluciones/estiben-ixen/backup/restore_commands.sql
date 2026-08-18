-- =====================================
-- RESTAURAR BACKUP LOGICO
-- =====================================


-- Crear base vacia

CREATE DATABASE urban_races_restore_db;



-- Restaurar desde consola:

-- mysql -u root -p urban_races_restore_db < urban_races_backup.sql



-- Verificar restauracion

USE urban_races_restore_db;


SHOW TABLES;