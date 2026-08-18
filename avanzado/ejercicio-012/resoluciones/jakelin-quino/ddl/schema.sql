-- Ejercicio 012 - Avanzado - Window Functions Playlist Musical
CREATE TABLE `ejercicio-012-adv-canciones` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    artista VARCHAR(50) NOT NULL,
    genero VARCHAR(30) DEFAULT 'pop',
    año INT DEFAULT 2025,
    reproducciones INT DEFAULT 0,
    calificacion DECIMAL(3,2) DEFAULT 0
);