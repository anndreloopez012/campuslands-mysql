-- Ejercicio 011 - Básico - Validaciones Simples Pingpong
CREATE TABLE `ejercicio-011-bas-jugadores` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    edad INT CHECK (edad >= 10 AND edad <= 80),
    nivel VARCHAR(20) DEFAULT 'principiante' 
        CHECK (nivel IN ('principiante', 'intermedio', 'avanzado', 'profesional')),
    partidos INT DEFAULT 0 CHECK (partidos >= 0),
    victorias INT DEFAULT 0 CHECK (victorias >= 0),
    derrotas INT DEFAULT 0 CHECK (derrotas >= 0),
    puntaje INT DEFAULT 0 CHECK (puntaje >= 0 AND puntaje <= 3000)
);