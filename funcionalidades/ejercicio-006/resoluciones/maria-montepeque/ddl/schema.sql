-- funcionalidades/ejercicio-006 - maria-montepeque
-- Tematica: saga de ciencia ficcion
USE campuslands_mysql;

DROP TABLE IF EXISTS entregas_saga;
DROP TABLE IF EXISTS sagas_ciencia_ficcion;

CREATE TABLE sagas_ciencia_ficcion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_saga VARCHAR(80) NOT NULL UNIQUE,
    universo VARCHAR(60) NOT NULL,
    anio_inicio YEAR NOT NULL
);

-- A proposito sin indice extra en anio_estreno: se agrega mas adelante en dql/consultas.sql
-- para comparar el EXPLAIN antes y despues.
CREATE TABLE entregas_saga (
    id INT AUTO_INCREMENT PRIMARY KEY,
    saga_id INT NOT NULL,
    titulo VARCHAR(150) NOT NULL,
    anio_estreno YEAR NOT NULL,
    taquilla_millones DECIMAL(8, 2) NOT NULL DEFAULT 0,
    es_precuela TINYINT(1) NOT NULL DEFAULT 0,
    CONSTRAINT fk_entrega_saga
        FOREIGN KEY (saga_id) REFERENCES sagas_ciencia_ficcion (id)
);
