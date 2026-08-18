-- funcionalidades/ejercicio-017 - maria-montepeque
-- Tematica: laboratorio de formulas quimicas
USE campuslands_mysql;

DROP TABLE IF EXISTS formulas_quimicas;

-- A proposito SIN el FULLTEXT INDEX todavia: se agrega en dql/consultas.sql
-- para poder comparar el "antes" (LIKE, EXPLAIN tipo ALL) contra el "despues".
CREATE TABLE formulas_quimicas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(20) NOT NULL UNIQUE,
    nombre VARCHAR(120) NOT NULL,
    descripcion TEXT NOT NULL,
    categoria VARCHAR(40) NOT NULL,
    fecha_registro DATE NOT NULL
);
