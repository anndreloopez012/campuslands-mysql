CREATE TABLE gimnasios_kickboxing (
    gimnasio_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_gimnasio VARCHAR(100) NOT NULL UNIQUE,
    ciudad VARCHAR(50) NOT NULL,
    pais VARCHAR(50) NOT NULL
);

CREATE TABLE peleadores_kickboxing (
    peleador_id INT AUTO_INCREMENT PRIMARY KEY,
    gimnasio_id INT NOT NULL,
    nombre_completo VARCHAR(100) NOT NULL,
    categoria_peso VARCHAR(30) NOT NULL CHECK (categoria_peso IN ('Súper Welter', 'Mediano', 'Semi Pesado', 'Pesado')),
    victorias INT NOT NULL DEFAULT 0 CHECK (victorias >= 0),
    derrotas INT NOT NULL DEFAULT 0 CHECK (derrotas >= 0),
    empates INT NOT NULL DEFAULT 0 CHECK (empates >= 0),
    puntos_ranking INT NOT NULL DEFAULT 0 CHECK (puntos_ranking >= 0),
    CONSTRAINT fk_peleadores_gimnasios 
        FOREIGN KEY (gimnasio_id) REFERENCES gimnasios_kickboxing(gimnasio_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE combates_fase_eliminatoria (
    combate_id INT AUTO_INCREMENT PRIMARY KEY,
    peleador_1_id INT NOT NULL,
    peleador_2_id INT NOT NULL,
    ganador_id INT,
    fase VARCHAR(30) NOT NULL CHECK (fase IN ('Cuartos', 'Semifinal', 'Final')),
    estado VARCHAR(20) NOT NULL DEFAULT 'Programado' CHECK (estado IN ('Programado', 'En Curso', 'Finalizado')),
    fecha_combate DATE NOT NULL,
    CONSTRAINT fk_combates_peleador1 
        FOREIGN KEY (peleador_1_id) REFERENCES peleadores_kickboxing(peleador_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_combates_peleador2 
        FOREIGN KEY (peleador_2_id) REFERENCES peleadores_kickboxing(peleador_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_combates_ganador 
        FOREIGN KEY (ganador_id) REFERENCES peleadores_kickboxing(peleador_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT chk_peleadores_distintos 
        CHECK (peleador_1_id <> peleador_2_id)
);