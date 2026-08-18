-- Campuslands MySQL - funcionalidades ejercicio 001
-- Resolucion: maria-montepeque
-- Tema: kickboxing
-- Funcionalidad: Motor InnoDB
-- Ejecuta este archivo antes de inserts.sql.
--
-- Estrategia de la demostracion: en vez de solo crear tablas InnoDB y
-- decir "esto es InnoDB", se crea CADA tabla dos veces (una version
-- InnoDB y una version MyISAM identica en estructura) para comparar
-- de verdad el comportamiento de InnoDB contra el motor que reemplazo
-- como default en MySQL. Las tres diferencias que se demuestran son
-- las que menciona el enunciado: claves foraneas, transacciones y
-- bloqueo por filas.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS luchadores_myisam_demo;
DROP TABLE IF EXISTS luchadores_innodb_demo;
DROP TABLE IF EXISTS gimnasios_innodb_demo;
DROP TABLE IF EXISTS inventario_gym_myisam_demo;
DROP TABLE IF EXISTS inventario_gym_innodb_demo;

-- ===================================================================
-- Parte 1: CLAVES FORANEAS.
-- gimnasios_innodb_demo es la tabla padre (siempre InnoDB: MyISAM no
-- tiene una nocion de "tabla padre" con integridad referencial real).
-- ===================================================================
CREATE TABLE gimnasios_innodb_demo (
  id_gimnasio INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(120) NOT NULL UNIQUE,
  ciudad VARCHAR(80) NOT NULL
) ENGINE=InnoDB;

-- Tabla hija en InnoDB: la FK SI se valida contra gimnasios_innodb_demo.
CREATE TABLE luchadores_innodb_demo (
  id_luchador INT AUTO_INCREMENT PRIMARY KEY,
  id_gimnasio INT NOT NULL,
  nombre VARCHAR(120) NOT NULL UNIQUE,
  victorias INT NOT NULL DEFAULT 0,
  derrotas INT NOT NULL DEFAULT 0,
  CONSTRAINT fk_luchadores_innodb_demo_gimnasio FOREIGN KEY (id_gimnasio) REFERENCES gimnasios_innodb_demo (id_gimnasio),
  CONSTRAINT chk_luchadores_innodb_demo_victorias CHECK (victorias >= 0),
  CONSTRAINT chk_luchadores_innodb_demo_derrotas CHECK (derrotas >= 0)
) ENGINE=InnoDB;

-- Tabla hija en MyISAM, con la MISMA sintaxis de FOREIGN KEY. MySQL
-- acepta la sintaxis sin error al crear la tabla, pero MyISAM no
-- implementa integridad referencial: la restriccion se ignora en
-- silencio (se demuestra con datos reales en dml/inserts.sql).
CREATE TABLE luchadores_myisam_demo (
  id_luchador INT AUTO_INCREMENT PRIMARY KEY,
  id_gimnasio INT NOT NULL,
  nombre VARCHAR(120) NOT NULL UNIQUE,
  victorias INT NOT NULL DEFAULT 0,
  derrotas INT NOT NULL DEFAULT 0,
  CONSTRAINT fk_luchadores_myisam_demo_gimnasio FOREIGN KEY (id_gimnasio) REFERENCES gimnasios_innodb_demo (id_gimnasio)
) ENGINE=MyISAM;

-- ===================================================================
-- Parte 2 y 3: TRANSACCIONES y BLOQUEO POR FILAS.
-- Mismo inventario, una vez en InnoDB y una vez en MyISAM, para
-- comparar ROLLBACK y el alcance del bloqueo al escribir.
-- ===================================================================
CREATE TABLE inventario_gym_innodb_demo (
  id_item INT PRIMARY KEY,
  nombre VARCHAR(80) NOT NULL,
  stock INT NOT NULL DEFAULT 0,
  ultima_operacion_seg INT NULL,
  CONSTRAINT chk_inventario_gym_innodb_demo_stock CHECK (stock >= 0)
) ENGINE=InnoDB;

CREATE TABLE inventario_gym_myisam_demo (
  id_item INT PRIMARY KEY,
  nombre VARCHAR(80) NOT NULL,
  stock INT NOT NULL DEFAULT 0,
  ultima_operacion_seg INT NULL
) ENGINE=MyISAM;
