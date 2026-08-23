DROP DATABASE ejercicio_18_int;
CREATE DATABASE ejercicio_18_int;
USE ejercicio_18_int;

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(120) NOT NULL UNIQUE,
    telefono VARCHAR(20)
);

CREATE TABLE destinos (
    id_destino INT AUTO_INCREMENT PRIMARY KEY,
    ciudad VARCHAR(80) NOT NULL,
    pais VARCHAR(80) NOT NULL,
    continente VARCHAR(50) NOT NULL
);

CREATE TABLE viajes (
    id_viaje INT AUTO_INCREMENT PRIMARY KEY,
    id_destino INT NOT NULL,
    nombre_viaje VARCHAR(120) NOT NULL,
    fecha_salida DATE NOT NULL,
    duracion_dias INT NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_destino) REFERENCES destinos(id_destino),
    CHECK (duracion_dias > 0),
    CHECK (precio > 0)
);

CREATE TABLE reservas (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_viaje INT NOT NULL,
    fecha_reserva DATE NOT NULL,
    cantidad_personas INT NOT NULL,
    estado VARCHAR(20) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_viaje) REFERENCES viajes(id_viaje),
    CHECK (cantidad_personas > 0),
    CHECK (estado IN ('Pendiente', 'Confirmada', 'Cancelada'))
);