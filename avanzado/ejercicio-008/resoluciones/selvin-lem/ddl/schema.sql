CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS futsal_staff;

CREATE TABLE futsal_staff (
  id_staff INT AUTO_INCREMENT PRIMARY KEY,
  nombre_staff VARCHAR(50) NOT NULL,
  cargo ENUM('director','entrenador','fisioterapeuta','utilero') NOT NULL,
  equipo VARCHAR(50) NOT NULL,
  fecha_ingreso DATE NOT NULL,
  estado ENUM('activo','inactivo') NOT NULL DEFAULT 'activo'
);

-- Creacion de roles/usuarios con distintos privilegios sobre la tabla futsal_staff
CREATE USER IF NOT EXISTS 'futsal_admin'@'%' IDENTIFIED BY 'AdminSeguro123';
CREATE USER IF NOT EXISTS 'futsal_entrenador'@'%' IDENTIFIED BY 'EntrenaSeguro123';
CREATE USER IF NOT EXISTS 'futsal_lector'@'%' IDENTIFIED BY 'LectorSeguro123';

-- Rol admin: control total sobre la tabla
GRANT SELECT, INSERT, UPDATE, DELETE ON campuslands_mysql.futsal_staff TO 'futsal_admin'@'%';

-- Rol entrenador: puede ver y actualizar, pero no insertar ni borrar personal
GRANT SELECT, UPDATE ON campuslands_mysql.futsal_staff TO 'futsal_entrenador'@'%';

-- Rol lector: solo consulta, sin modificar nada (caso limite de menor privilegio)
GRANT SELECT ON campuslands_mysql.futsal_staff TO 'futsal_lector'@'%';

FLUSH PRIVILEGES;