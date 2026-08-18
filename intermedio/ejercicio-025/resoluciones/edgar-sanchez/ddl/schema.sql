-- Campuslands MySQL - intermedio ejercicio 025
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

CREATE TABLE reactivos_quimicos (
    reactivo_id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_cas VARCHAR(12) NOT NULL UNIQUE,
    nombre_quimico VARCHAR(100) NOT NULL UNIQUE,
    formula_molecular VARCHAR(50) NOT NULL,
    pureza_porcentaje DECIMAL(5,2) NOT NULL CONSTRAINT chk_pureza CHECK (pureza_porcentaje BETWEEN 0.00 AND 100.00)
);

CREATE TABLE quimicos_analistas (
    analista_id INT AUTO_INCREMENT PRIMARY KEY,
    numero_colegiado VARCHAR(20) NOT NULL UNIQUE,
    nombre_analista VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    nivel_acceso VARCHAR(20) NOT NULL CONSTRAINT chk_nivel CHECK (nivel_acceso IN ('Junior', 'Senior', 'Director'))
);

CREATE TABLE formulas_quimicas (
    formula_id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_formula VARCHAR(20) NOT NULL UNIQUE,
    nombre_formula VARCHAR(150) NOT NULL,
    analista_creador_id INT NOT NULL,
    fecha_creacion DATE NOT NULL,
    estado_formula VARCHAR(20) NOT NULL DEFAULT 'Borrador' CONSTRAINT chk_estado CHECK (estado_formula IN ('Borrador', 'En Pruebas', 'Aprobada', 'Archivada')),
    CONSTRAINT fk_formulas_analistas 
        FOREIGN KEY (analista_creador_id) REFERENCES quimicos_analistas(analista_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT uq_analista_nombre_formula 
        UNIQUE (analista_creador_id, nombre_formula)
);

CREATE TABLE composicion_formula (
    composicion_id INT AUTO_INCREMENT PRIMARY KEY,
    formula_id INT NOT NULL,
    reactivo_id INT NOT NULL,
    cantidad_gramos DECIMAL(8,3) NOT NULL CONSTRAINT chk_cantidad CHECK (cantidad_gramos > 0.000),
    CONSTRAINT fk_composicion_formula 
        FOREIGN KEY (formula_id) REFERENCES formulas_quimicas(formula_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_composicion_reactivo 
        FOREIGN KEY (reactivo_id) REFERENCES reactivos_quimicos(reactivo_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT uq_formula_reactivo 
        UNIQUE (formula_id, reactivo_id)
);