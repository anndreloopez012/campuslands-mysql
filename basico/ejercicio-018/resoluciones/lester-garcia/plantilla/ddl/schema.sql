DROP DATABASE IF EXISTS ejercicio_18;
CREATE DATABASE ejercicio_18;
USE ejercicio_18;

CREATE TABLE destinos (
    id_destino INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    pais VARCHAR(60) NOT NULL,
    ciudad VARCHAR(60) NOT NULL,
    descripcion VARCHAR(200)
);

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    telefono VARCHAR(15) NOT NULL UNIQUE
);

CREATE TABLE paquetes (
    id_paquete INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    duracion_dias INT UNSIGNED NOT NULL,
    id_destino INT NOT NULL,
    FOREIGN KEY (id_destino) REFERENCES destinos(id_destino)
);

CREATE TABLE reservas (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_paquete INT NOT NULL,
    fecha_reserva DATE NOT NULL,
    cantidad_personas INT UNSIGNED NOT NULL,
    estado ENUM('Pendiente', 'Confirmada', 'Cancelada') NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_paquete) REFERENCES paquetes(id_paquete)
);