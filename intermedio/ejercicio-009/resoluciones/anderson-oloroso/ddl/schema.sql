USE campuslands_mysql;

CREATE TABLE IF NOT EXISTS categorias_kickboxing (
    categoria_id INT NOT NULL AUTO_INCREMENT,
    nombre_categoria VARCHAR(50) NOT NULL,
    limite_peso DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (categoria_id)
);

CREATE TABLE IF NOT EXISTS peleadores_kickboxing (
    peleador_id INT NOT NULL AUTO_INCREMENT,
    nombre_peleador VARCHAR(100) NOT NULL,
    nacionalidad VARCHAR(50) NOT NULL,
    categoria_id INT NOT NULL,
    PRIMARY KEY (peleador_id),
    FOREIGN KEY (categoria_id) REFERENCES categorias_kickboxing(categoria_id)
);

CREATE TABLE IF NOT EXISTS combates_kickboxing (
    combate_id INT NOT NULL AUTO_INCREMENT,
    peleador_id INT NOT NULL,
    fecha_combate DATE NOT NULL,
    oponente VARCHAR(100) NOT NULL,
    resultado VARCHAR(20) NOT NULL,
    PRIMARY KEY (combate_id),
    FOREIGN KEY (peleador_id) REFERENCES peleadores_kickboxing(peleador_id)
);