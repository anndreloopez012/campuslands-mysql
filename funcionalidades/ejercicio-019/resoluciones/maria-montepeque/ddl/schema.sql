-- funcionalidades/ejercicio-019 - maria-montepeque
-- Tematica: videojuego de accion y aventura
USE campuslands_mysql;

DROP TABLE IF EXISTS objetos_recolectados;
DROP TABLE IF EXISTS partidas_guardadas;

CREATE TABLE partidas_guardadas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    jugador VARCHAR(60) NOT NULL,
    nivel_actual INT NOT NULL,
    puntos_experiencia INT NOT NULL DEFAULT 0,
    ubicacion VARCHAR(80) NOT NULL,
    fecha_guardado DATETIME NOT NULL,
    CONSTRAINT chk_nivel_partida CHECK (nivel_actual > 0)
);

CREATE TABLE objetos_recolectados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    partida_id INT NOT NULL,
    nombre_objeto VARCHAR(100) NOT NULL,
    cantidad INT NOT NULL DEFAULT 1,
    CONSTRAINT fk_objeto_partida
        FOREIGN KEY (partida_id) REFERENCES partidas_guardadas (id),
    CONSTRAINT chk_cantidad_objeto_recolectado CHECK (cantidad > 0)
);
