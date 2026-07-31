-- Campuslands MySQL - basico ejercicio 006
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS basico_ejercicio_006;

CREATE TABLE Autos_Hiperdeportivos(
 id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
 marca VARCHAR(40) NOT NULL,
 modelo VARCHAR(50) NOT NULL,
 potencia INT 
);

