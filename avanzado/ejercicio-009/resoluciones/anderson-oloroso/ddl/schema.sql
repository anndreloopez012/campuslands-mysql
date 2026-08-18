USE campuslands_mysql;

CREATE TABLE IF NOT EXISTS peleadores_kickboxing (
    peleador_id INT NOT NULL AUTO_INCREMENT,
    nombre_peleador VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    nacionalidad VARCHAR(50) NOT NULL,
    victorias INT NOT NULL,
    derrotas INT NOT NULL,
    PRIMARY KEY (peleador_id)
);