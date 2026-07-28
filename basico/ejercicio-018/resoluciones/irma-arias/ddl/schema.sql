DROP DATABASE IF EXISTS db_viajes_turismo_irma;
CREATE DATABASE db_viajes_turismo_irma;
USE db_viajes_turismo_irma;

CREATE TABLE paquetes_turisticos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    destino VARCHAR(70) NOT NULL,
    tipo_viaje VARCHAR(30) NOT NULL CHECK (tipo_viaje IN ('Playa', 'Aventura', 'Cultural', 'Montaña', 'Lujo', 'Crucero')),
    duracion_dias INT NOT NULL CHECK (duracion_dias > 0),
    precio_usd DECIMAL(10,2) NOT NULL CHECK (precio_usd > 0.00),
    cupos_disponibles INT NOT NULL CHECK (cupos_disponibles >= 0),
    estado_paquete VARCHAR(20) NOT NULL DEFAULT 'Disponible' CHECK (estado_paquete IN ('Disponible', 'Agotado', 'Proximamente'))
);