DROP DATABASE IF EXISTS hiperdeportivos_2fn_db;
CREATE DATABASE hiperdeportivos_2fn_db;
USE hiperdeportivos_2fn_db;

CREATE TABLE fabricantes (
    id_fabricante INT AUTO_INCREMENT PRIMARY KEY,
    nombre_fabricante VARCHAR(50) NOT NULL,
    pais_origen VARCHAR(40) NOT NULL
);

CREATE TABLE caracteristicas_motor (
    id_motor INT AUTO_INCREMENT PRIMARY KEY,
    tipo_motor VARCHAR(60) NOT NULL,
    aspiracion VARCHAR(30) NOT NULL
);

CREATE TABLE hiperdeportivos_2fn (
    id_auto INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(80) NOT NULL,
    potencia_hp INT UNSIGNED CHECK (potencia_hp BETWEEN 500 AND 3000),
    velocidad_max_kmh INT UNSIGNED CHECK (velocidad_max_kmh BETWEEN 300 AND 600),
    precio_usd DECIMAL(12,2) CHECK (precio_usd >= 0.00),
    id_fabricante INT NOT NULL,
    id_motor INT NOT NULL,
    estado_produccion ENUM('concept', 'limitado', 'en_produccion', 'descontinuado') DEFAULT 'limitado',
    FOREIGN KEY (id_fabricante) REFERENCES fabricantes(id_fabricante) ON DELETE CASCADE,
    FOREIGN KEY (id_motor) REFERENCES caracteristicas_motor(id_motor) ON DELETE CASCADE
);
