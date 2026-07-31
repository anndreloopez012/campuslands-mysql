/*=========================================================
  EJERCICIO 006 - EXPLAIN
  Tema: Autos Hiperdeportivos
  Archivo: ddl/schema.sql
=========================================================*/

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

/*=========================================================
  Eliminación de tablas
=========================================================*/

DROP TABLE IF EXISTS autos_hiperdeportivos;
DROP TABLE IF EXISTS modelos;
DROP TABLE IF EXISTS marcas;
DROP TABLE IF EXISTS paises;

/*=========================================================
  Tabla: marcas
=========================================================*/

CREATE TABLE marcas (
    id_marca INT AUTO_INCREMENT PRIMARY KEY,
    nombre_marca VARCHAR(60) NOT NULL UNIQUE,
    fundador VARCHAR(80) NOT NULL
);

/*=========================================================
  Tabla: modelos
=========================================================*/

CREATE TABLE modelos (
    id_modelo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_modelo VARCHAR(80) NOT NULL,
    tipo_motor VARCHAR(40) NOT NULL
);

/*=========================================================
  Tabla: paises
=========================================================*/

CREATE TABLE paises (
    id_pais INT AUTO_INCREMENT PRIMARY KEY,
    codigo_iso CHAR(3) NOT NULL UNIQUE,
    nombre_pais VARCHAR(60) NOT NULL
);

/*=========================================================
  Tabla principal
=========================================================*/

CREATE TABLE autos_hiperdeportivos (

    id_auto INT AUTO_INCREMENT PRIMARY KEY,

    id_marca INT NOT NULL,
    id_modelo INT NOT NULL,
    id_pais INT NOT NULL,

    anio YEAR NOT NULL,

    potencia_hp INT NOT NULL
        CHECK (potencia_hp > 0),

    velocidad_max_kmh INT NOT NULL
        CHECK (velocidad_max_kmh > 0),

    aceleracion_0_100 DECIMAL(4,2) NOT NULL
        CHECK (aceleracion_0_100 > 0),

    precio_usd DECIMAL(15,2) NOT NULL
        CHECK (precio_usd > 0),

    estado ENUM('Disponible','Vendido')
        DEFAULT 'Disponible',

    CONSTRAINT fk_auto_marca
        FOREIGN KEY(id_marca)
        REFERENCES marcas(id_marca),

    CONSTRAINT fk_auto_modelo
        FOREIGN KEY(id_modelo)
        REFERENCES modelos(id_modelo),

    CONSTRAINT fk_auto_pais
        FOREIGN KEY(id_pais)
        REFERENCES paises(id_pais)
);

/*=========================================================
  Índices para optimizar consultas EXPLAIN
=========================================================*/

CREATE INDEX idx_marca
ON autos_hiperdeportivos(id_marca);

CREATE INDEX idx_modelo
ON autos_hiperdeportivos(id_modelo);

CREATE INDEX idx_pais
ON autos_hiperdeportivos(id_pais);

CREATE INDEX idx_potencia
ON autos_hiperdeportivos(potencia_hp);

CREATE INDEX idx_velocidad
ON autos_hiperdeportivos(velocidad_max_kmh);

CREATE INDEX idx_precio
ON autos_hiperdeportivos(precio_usd);

CREATE INDEX idx_estado
ON autos_hiperdeportivos(estado);

CREATE INDEX idx_anio
ON autos_hiperdeportivos(anio);