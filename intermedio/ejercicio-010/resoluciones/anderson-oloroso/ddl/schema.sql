USE campuslands_mysql;

CREATE TABLE IF NOT EXISTS corredores_urbanos (
    corredor_id INT NOT NULL AUTO_INCREMENT,
    nombre_corredor VARCHAR(100) NOT NULL,
    documento VARCHAR(30) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    ciudad VARCHAR(80) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    PRIMARY KEY (corredor_id),
    UNIQUE (documento),
    UNIQUE (correo)
);