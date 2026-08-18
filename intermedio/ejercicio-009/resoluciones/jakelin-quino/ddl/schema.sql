-- Ejercicio 009 - Intermedio - FOREIGN KEY Kickboxing

-- Tabla de categorías
CREATE TABLE `ejercicio-009-int-categorias` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL UNIQUE,
    peso_min DECIMAL(5,2) NOT NULL,
    peso_max DECIMAL(5,2) NOT NULL
);

-- Tabla de gimnasios
CREATE TABLE `ejercicio-009-int-gimnasios` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    ciudad VARCHAR(30) NOT NULL,
    entrenador VARCHAR(50) NOT NULL
);

-- Tabla de luchadores (con FOREIGN KEY)
CREATE TABLE `ejercicio-009-int-luchadores` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    categoria_id INT,
    gimnasio_id INT,
    peso DECIMAL(5,2) DEFAULT 0,
    victorias INT DEFAULT 0,
    derrotas INT DEFAULT 0,
    nocauts INT DEFAULT 0,
    activo BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (categoria_id) REFERENCES `ejercicio-009-int-categorias`(id),
    FOREIGN KEY (gimnasio_id) REFERENCES `ejercicio-009-int-gimnasios`(id)
);