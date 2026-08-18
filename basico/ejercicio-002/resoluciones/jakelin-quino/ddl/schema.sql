-- Ejercicio 002 - Básico - Tipos de datos Battle Royale
CREATE TABLE `ejercicio-002-bas-jugadores` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nick VARCHAR(30) NOT NULL,
    nivel TINYINT DEFAULT 1,
    puntaje DECIMAL(10,2) DEFAULT 0,
    victorias INT DEFAULT 0,
    tiempo TIME DEFAULT '00:00:00',
    fecha_reg DATE DEFAULT (CURRENT_DATE),
    activo BOOLEAN DEFAULT TRUE,
    tasa_win DECIMAL(5,2) DEFAULT 0
);