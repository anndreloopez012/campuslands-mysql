-- Ejercicio 003 - Avanzado - Funciones SQL Inventario Skins
CREATE TABLE `ejercicio-003-adv-skins` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    rareza VARCHAR(20) DEFAULT 'común',
    precio DECIMAL(10,2) DEFAULT 0,
    arma VARCHAR(30) NOT NULL,
    jugador VARCHAR(30) NOT NULL,
    fecha_obtenida DATE DEFAULT (CURRENT_DATE),
    descuento DECIMAL(5,2) DEFAULT 0
);