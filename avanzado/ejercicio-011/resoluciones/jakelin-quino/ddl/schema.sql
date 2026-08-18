-- Ejercicio 011 - Avanzado - CTE Pingpong
CREATE TABLE `ejercicio-011-adv-jugadores` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    edad INT DEFAULT 0,
    nivel VARCHAR(20) DEFAULT 'principiante',
    partidos INT DEFAULT 0,
    victorias INT DEFAULT 0,
    derrotas INT DEFAULT 0,
    puntaje INT DEFAULT 0
);