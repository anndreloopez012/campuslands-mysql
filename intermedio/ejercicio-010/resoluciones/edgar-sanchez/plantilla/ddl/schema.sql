CREATE TABLE circuitos_urbanos (
    circuito_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_circuito VARCHAR(100) NOT NULL UNIQUE,
    ciudad VARCHAR(50) NOT NULL,
    longitud_km DECIMAL(4,2) NOT NULL CHECK (longitud_km > 0.00)
);

CREATE TABLE corredores_urbanos (
    corredor_id INT AUTO_INCREMENT PRIMARY KEY,
    dni_pasaporte VARCHAR(20) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    nombre_completo VARCHAR(100) NOT NULL,
    edad INT NOT NULL CHECK (edad BETWEEN 16 AND 90)
);

CREATE TABLE inscripciones_carreras (
    inscripcion_id INT AUTO_INCREMENT PRIMARY KEY,
    circuito_id INT NOT NULL,
    corredor_id INT NOT NULL,
    numero_dorsal INT NOT NULL CHECK (numero_dorsal BETWEEN 1 AND 9999),
    categoria VARCHAR(30) NOT NULL CHECK (categoria IN ('Elite', 'Master', 'Amateur')),
    tiempo_minutos DECIMAL(5,2) CHECK (tiempo_minutos > 0.00),
    CONSTRAINT fk_inscripciones_circuitos 
        FOREIGN KEY (circuito_id) REFERENCES circuitos_urbanos(circuito_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_inscripciones_corredores 
        FOREIGN KEY (corredor_id) REFERENCES corredores_urbanos(corredor_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT uq_circuito_corredor 
        UNIQUE (circuito_id, corredor_id),
    CONSTRAINT uq_circuito_dorsal 
        UNIQUE (circuito_id, numero_dorsal)
);