CREATE TABLE autos_hiperdeportivos (
    auto_id INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    pais_origen VARCHAR(50) NOT NULL,
    potencia_hp INT NOT NULL CHECK (potencia_hp >= 500),
    velocidad_max_kmh INT NOT NULL CHECK (velocidad_max_kmh >= 300),
    precio_usd DECIMAL(12,2) NOT NULL CHECK (precio_usd > 0.00)
);

CREATE TABLE equipamientos_hiperdeportivos (
    equipamiento_id INT AUTO_INCREMENT PRIMARY KEY,
    auto_id INT NOT NULL,
    nombre_caracteristica VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL CHECK (categoria IN ('Aerodinámica', 'Motorización', 'Chasis', 'Electrónica', 'Interior')),
    CONSTRAINT fk_equipamientos_autos 
        FOREIGN KEY (auto_id) REFERENCES autos_hiperdeportivos(auto_id) 
        ON DELETE CASCADE ON UPDATE CASCADE
);