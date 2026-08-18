-- Ejercicio 012 - Básico - Modelado de Entidad Playlist Musical
CREATE TABLE `ejercicio-012-bas-canciones` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    artista VARCHAR(50) NOT NULL,
    album VARCHAR(50) NOT NULL,
    genero VARCHAR(30) DEFAULT 'pop',
    duracion TIME DEFAULT '00:03:00',
    año INT DEFAULT 2025,
    reproducciones INT DEFAULT 0,
    calificacion DECIMAL(3,2) DEFAULT 0 CHECK (calificacion >= 0 AND calificacion <= 5)
);