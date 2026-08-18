CREATE TABLE gimnasios_kickboxing (
    gimnasio_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_gimnasio VARCHAR(100) NOT NULL UNIQUE,
    ciudad VARCHAR(50) NOT NULL,
    pais VARCHAR(50) NOT NULL
);

CREATE TABLE entrenadores_kickboxing (
    entrenador_id INT AUTO_INCREMENT PRIMARY KEY,
    gimnasio_id INT NOT NULL,
    nombre_completo VARCHAR(100) NOT NULL,
    especialidad VARCHAR(50) NOT NULL CHECK (especialidad IN ('K-1', 'Full Contact', 'Low Kick', 'Muay Thai')),
    anios_experiencia INT NOT NULL CHECK (anios_experiencia >= 0),
    CONSTRAINT fk_entrenadores_gimnasios 
        FOREIGN KEY (gimnasio_id) REFERENCES gimnasios_kickboxing(gimnasio_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE peleadores_kickboxing (
    peleador_id INT AUTO_INCREMENT PRIMARY KEY,
    gimnasio_id INT NOT NULL,
    entrenador_id INT NOT NULL,
    nombre_completo VARCHAR(100) NOT NULL,
    apodo VARCHAR(50),
    categoria_peso VARCHAR(30) NOT NULL CHECK (categoria_peso IN ('Súper Welter', 'Mediano', 'Semi Pesado', 'Pesado')),
    victorias INT NOT NULL DEFAULT 0 CHECK (victorias >= 0),
    derrotas INT NOT NULL DEFAULT 0 CHECK (derrotas >= 0),
    empates INT NOT NULL DEFAULT 0 CHECK (empates >= 0),
    CONSTRAINT fk_peleadores_gimnasios 
        FOREIGN KEY (gimnasio_id) REFERENCES gimnasios_kickboxing(gimnasio_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_peleadores_entrenadores 
        FOREIGN KEY (entrenador_id) REFERENCES entrenadores_kickboxing(entrenador_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE
);