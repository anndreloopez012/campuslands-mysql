USE ejercicio_10_adv;

SELECT * FROM runners;
SELECT * FROM races;
SELECT * FROM categories;
SELECT * FROM registrations;

SELECT COUNT(*) FROM runners;

USE urban_races_backup;

-- ==========================================
-- Verificación de la información
-- ==========================================

SELECT * FROM runners;
SELECT * FROM races;
SELECT * FROM categories;
SELECT * FROM registrations;

-- ==========================================
-- Ejemplo de respaldo lógico con mysqldump
-- (Estos comandos se ejecutan desde la terminal,
-- no desde el cliente de MySQL)
-- ==========================================

-- Respaldar toda la base de datos
-- mysqldump -u root -p urban_races_backup > urban_races_backup.sql

-- Respaldar únicamente la tabla runners
-- mysqldump -u root -p urban_races_backup runners > runners_backup.sql

-- Respaldar únicamente la estructura
-- mysqldump -u root -p --no-data urban_races_backup > structure_backup.sql

-- Respaldar únicamente los datos
-- mysqldump -u root -p --no-create-info urban_races_backup > data_backup.sql

-- ==========================================
-- Ejemplo de restauración
-- (También se ejecuta desde la terminal)
-- ==========================================

-- mysql -u root -p urban_races_backup < urban_races_backup.sql