CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS carreras_urbanas_resultados;

CREATE TABLE carreras_urbanas_resultados (
  id_resultado INT AUTO_INCREMENT PRIMARY KEY,
  piloto VARCHAR(50) NOT NULL,
  circuito VARCHAR(60) NOT NULL,
  posicion_final SMALLINT UNSIGNED NOT NULL,
  tiempo_vuelta TIME NOT NULL,
  premio DECIMAL(10,2) NOT NULL DEFAULT 0.00,
  fecha_carrera DATE NOT NULL,
  estado ENUM('valido','descalificado','en_revision') NOT NULL DEFAULT 'valido'
);