-- funcionalidades/ejercicio-010 - maria-montepeque
-- Tematica: viajes y turismo
USE campuslands_mysql;

DROP TABLE IF EXISTS reservas_viaje;
DROP TABLE IF EXISTS destinos_turisticos;

CREATE TABLE destinos_turisticos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(60) NOT NULL,
    pais VARCHAR(60) NOT NULL,
    categoria ENUM(
        'Playa',
        'Montana',
        'Cultural',
        'Ciudad'
    ) NOT NULL
);

CREATE TABLE reservas_viaje (
    id INT AUTO_INCREMENT PRIMARY KEY,
    destino_id INT NOT NULL,
    viajero VARCHAR(60) NOT NULL,
    fecha_reserva DATE NOT NULL,
    noches INT NOT NULL,
    costo_total DECIMAL(8, 2) NOT NULL,
    CONSTRAINT fk_reserva_destino
        FOREIGN KEY (destino_id) REFERENCES destinos_turisticos (id),
    CONSTRAINT chk_noches_reserva CHECK (noches > 0),
    CONSTRAINT chk_costo_reserva CHECK (costo_total > 0)
);
