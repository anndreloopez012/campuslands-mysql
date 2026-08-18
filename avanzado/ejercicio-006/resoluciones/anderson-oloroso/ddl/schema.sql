USE campuslands_mysql;

CREATE TABLE IF NOT EXISTS autos_hiperdeportivos (
    auto_id INT NOT NULL AUTO_INCREMENT,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(80) NOT NULL,
    anio INT NOT NULL,
    motor VARCHAR(80) NOT NULL,
    potencia_hp INT NOT NULL,
    velocidad_maxima_kmh INT NOT NULL,
    precio DECIMAL(15,2) NOT NULL,
    pais_origen VARCHAR(50) NOT NULL,
    PRIMARY KEY (auto_id),
    INDEX idx_marca (marca),
    INDEX idx_potencia (potencia_hp),
    INDEX idx_velocidad (velocidad_maxima_kmh),
    INDEX idx_anio (anio)
);