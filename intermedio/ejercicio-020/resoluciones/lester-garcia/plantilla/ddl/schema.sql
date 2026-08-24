DROP DATABASE IF EXISTS ejercicio_20_int;
CREATE DATABASE ejercicio_20_int;
USE ejercicio_20_int;

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    correo VARCHAR(120) NOT NULL UNIQUE
);

CREATE TABLE tatuadores (
    id_tatuador INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    especialidad VARCHAR(80) NOT NULL,
    experiencia_anios INT NOT NULL,
    CHECK (experiencia_anios >= 0)
);

CREATE TABLE estilos (
    id_estilo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(60) NOT NULL UNIQUE,
    descripcion VARCHAR(200)
);

CREATE TABLE tatuajes (
    id_tatuaje INT AUTO_INCREMENT PRIMARY KEY,
    id_tatuador INT NOT NULL,
    id_estilo INT NOT NULL,
    nombre_diseno VARCHAR(120) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    duracion_horas DECIMAL(4,2) NOT NULL,
    FOREIGN KEY (id_tatuador) REFERENCES tatuadores(id_tatuador),
    FOREIGN KEY (id_estilo) REFERENCES estilos(id_estilo),
    CHECK (precio > 0),
    CHECK (duracion_horas > 0)
);

CREATE TABLE citas (
    id_cita INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_tatuaje INT NOT NULL,
    fecha_cita DATE NOT NULL,
    estado VARCHAR(20) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_tatuaje) REFERENCES tatuajes(id_tatuaje),
    CHECK (estado IN ('Agendada', 'Completada', 'Cancelada'))
);