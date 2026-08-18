CREATE TABLE constructores (
    constructor_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    pais_origen VARCHAR(50) NOT NULL,
    anio_fundacion INT NOT NULL CHECK (anio_fundacion BETWEEN 1800 AND 2026)
);

CREATE TABLE modelos_hiperdeportivos (
    modelo_id INT AUTO_INCREMENT PRIMARY KEY,
    constructor_id INT NOT NULL,
    nombre_modelo VARCHAR(100) NOT NULL UNIQUE,
    precio_base_usd DECIMAL(12,2) NOT NULL CHECK (precio_base_usd > 0.00),
    unidades_producidas INT NOT NULL CHECK (unidades_producidas > 0),
    CONSTRAINT fk_modelos_constructores 
        FOREIGN KEY (constructor_id) REFERENCES constructores(constructor_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE especificaciones_tecnicas (
    especificacion_id INT AUTO_INCREMENT PRIMARY KEY,
    modelo_id INT NOT NULL UNIQUE,
    potencia_hp INT NOT NULL CHECK (potencia_hp >= 500),
    torque_nm INT NOT NULL CHECK (torque_nm >= 500),
    velocidad_max_kmh INT NOT NULL CHECK (velocidad_max_kmh >= 300),
    aceleracion_0_100 DECIMAL(3,2) NOT NULL CHECK (aceleracion_0_100 > 0.00),
    tipo_propulsion VARCHAR(30) NOT NULL CHECK (tipo_propulsion IN ('Combustión', 'Híbrido', 'Eléctrico')),
    CONSTRAINT fk_especificaciones_modelos 
        FOREIGN KEY (modelo_id) REFERENCES modelos_hiperdeportivos(modelo_id) 
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE pruebas_rendimiento (
    prueba_id INT AUTO_INCREMENT PRIMARY KEY,
    modelo_id INT NOT NULL,
    pista_nombre VARCHAR(100) NOT NULL,
    tiempo_lap_segundos DECIMAL(6,3) NOT NULL CHECK (tiempo_lap_segundos > 0.000),
    fecha_prueba DATE NOT NULL,
    CONSTRAINT fk_pruebas_modelos 
        FOREIGN KEY (modelo_id) REFERENCES modelos_hiperdeportivos(modelo_id) 
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX idx_especificaciones_potencia ON especificaciones_tecnicas(potencia_hp);
CREATE INDEX idx_pruebas_pista_tiempo ON pruebas_rendimiento(pista_nombre, tiempo_lap_segundos);

