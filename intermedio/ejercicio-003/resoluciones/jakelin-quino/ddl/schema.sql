-- Ejercicio 003 - Intermedio - GROUP BY Inventario Skins
CREATE TABLE `ejercicio-003-int-skins` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    rareza VARCHAR(20) DEFAULT 'común',
    precio DECIMAL(10,2) DEFAULT 0,
    arma VARCHAR(30) NOT NULL,
    jugador VARCHAR(30) NOT NULL,
    fecha_obtenida DATE DEFAULT (CURRENT_DATE)
);