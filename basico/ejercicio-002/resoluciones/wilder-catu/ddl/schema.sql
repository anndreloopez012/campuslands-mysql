USE campuslands_mysql;

CREATE TABLE jugadores (
    id_jugador INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    pais VARCHAR(40) NOT NULL,
    puntaje INT NOT NULL,
    eliminaciones INT NOT NULL,
    partidas INT NOT NULL,
    precision_disparo DECIMAL(5,2) NOT NULL ,
    fecha_registro DATE NOT NULL,
    ultima_conexion DATETIME NOT NULL,
    activo BOOLEAN NOT NULL DEFAULT TRUE
);