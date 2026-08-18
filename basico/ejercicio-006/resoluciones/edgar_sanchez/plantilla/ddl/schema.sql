CREATE TABLE autos_hiperdeportivos (
    auto_id INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    pais_origen VARCHAR(50) NOT NULL,
    potencia_hp INT NOT NULL CHECK (potencia_hp >= 500),
    velocidad_max_kmh INT NOT NULL CHECK (velocidad_max_kmh >= 300),
    precio_usd DECIMAL(12,2) NOT NULL CHECK (precio_usd > 0.00),
    unidades_producidas INT NOT NULL CHECK (unidades_producidas >= 1),
    transmision_tipo VARCHAR(30) NOT NULL CHECK (transmision_tipo IN ('Automática', 'Secuencial', 'Manual', 'Direct-Drive'))
);