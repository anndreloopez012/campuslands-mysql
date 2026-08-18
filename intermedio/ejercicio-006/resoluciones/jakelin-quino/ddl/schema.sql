-- Ejercicio 006 - Intermedio - Normalización 1FN Autos Hiperdeportivos

-- Tabla de marcas (1FN)
CREATE TABLE `ejercicio-006-int-marcas` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL UNIQUE,
    pais VARCHAR(30) NOT NULL,
    fundacion INT
);

-- Tabla de autos (1FN)
CREATE TABLE `ejercicio-006-int-autos` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    marca_id INT,
    modelo VARCHAR(30) NOT NULL,
    año INT DEFAULT 2025,
    velocidad_max INT DEFAULT 0,
    aceleracion DECIMAL(3,1) DEFAULT 0,
    precio DECIMAL(12,2) DEFAULT 0,
    FOREIGN KEY (marca_id) REFERENCES `ejercicio-006-int-marcas`(id)
);

-- Tabla de especificaciones (1FN)
CREATE TABLE `ejercicio-006-int-especificaciones` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    auto_id INT,
    combustible VARCHAR(20),
    motor VARCHAR(30),
    potencia INT,
    FOREIGN KEY (auto_id) REFERENCES `ejercicio-006-int-autos`(id)
);