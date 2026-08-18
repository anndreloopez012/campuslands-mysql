CREATE TABLE destinos_turisticos (
    destino_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_destino VARCHAR(100) NOT NULL UNIQUE,
    pais VARCHAR(50) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    clima_predominante VARCHAR(30) NOT NULL
);

CREATE TABLE paquetes_turismo (
    paquete_id INT AUTO_INCREMENT PRIMARY KEY,
    destino_id INT NOT NULL,
    codigo_paquete VARCHAR(20) NOT NULL UNIQUE,
    nombre_paquete VARCHAR(100) NOT NULL,
    duracion_dias INT NOT NULL CHECK (duracion_dias > 0),
    precio_usd DECIMAL(10,2) NOT NULL CHECK (precio_usd > 0.00),
    CONSTRAINT fk_paquetes_destinos 
        FOREIGN KEY (destino_id) REFERENCES destinos_turisticos(destino_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE clientes_viajeros (
    cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    pasaporte_dni VARCHAR(20) NOT NULL UNIQUE,
    nombre_completo VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefono VARCHAR(20) NOT NULL
);

CREATE TABLE reservas_viajes (
    reserva_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT NOT NULL,
    paquete_id INT NOT NULL,
    fecha_reserva DATE NOT NULL,
    fecha_viaje DATE NOT NULL,
    estado_reserva VARCHAR(20) NOT NULL DEFAULT 'Confirmada' CHECK (estado_reserva IN ('Pendiente', 'Confirmada', 'Cancelada')),
    CONSTRAINT fk_reservas_clientes 
        FOREIGN KEY (cliente_id) REFERENCES clientes_viajeros(cliente_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_reservas_paquetes 
        FOREIGN KEY (paquete_id) REFERENCES paquetes_turismo(paquete_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT chk_fechas_coherentes 
        CHECK (fecha_viaje >= fecha_reserva)
);