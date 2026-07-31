-- Campuslands MySQL - intermedio ejercicio 006
-- Ejecuta este archivo antes de inserts.sql.

 CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS Autos_Hiperdeportivos_06;

 CREATE TABLE Autos_Hiperdeportivos_06(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_marca INT NOT NULL,
    id_modelo INT NOT NULL,
    id_pais_origen INT NOT NULL,
    anio YEAR NOT NULL,
    potencia_hp INT NOT NULL CHECK (potencia_hp > 0),
    velocidad_max_kmh INT NOT NULL CHECK (velocidad_max_kmh > 0),
    precio_usd DECIMAL(15,2) NOT NULL CHECK (precio_usd > 0),
    Foreign Key (id_marca) REFERENCES marcas(id_marcas) ,
    Foreign Key (id_modelo) REFERENCES modelo(id_modelo),
    Foreign Key (id_pais_origen) REFERENCES pais_origen(id_pais)
);


CREATE TABLE marcas (
  id_marcas INT PRIMARY KEY AUTO_INCREMENT,
  nombre_marca VARCHAR(60) NOT NULL,
  creador_marca VARCHAR(60) NOT NULL
);

CREATE TABLE modelo (
  id_modelo INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  Distribuidora VARCHAR(60) NOT NULL
); 


CREATE TABLE pais_origen(
  id_pais INT PRIMARY KEY AUTO_INCREMENT,
  codigo_pais VARCHAR(5),
  nombre_pais VARCHAR(60)
);