-- Campuslands MySQL - basico ejercicio 006
-- basico/ejercicio-006 - evelyn-barrios
-- Se modifica la plantilla para crear una tabla temática sobre hiperdeportivos.

USE campuslands_mysql;

-- Crear la tabla para los autos hiperdeportivos
CREATE TABLE hiperdeportivos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    anio INT NOT NULL,
    velocidad_max_kmh INT,
    aceleracion_0_100_s DECIMAL(3, 1),
    precio_usd DECIMAL(15, 2),
    pais_origen VARCHAR(50),
    produccion_limitada BOOLEAN DEFAULT FALSE,
    estado ENUM('disponible', 'vendido', 'prototipo', 'en_produccion') NOT NULL,
    CONSTRAINT chk_anio CHECK (anio > 1980)
);
