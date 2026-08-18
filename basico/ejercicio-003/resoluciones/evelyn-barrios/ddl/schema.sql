-- Campuslands MySQL - basico ejercicio 003
-- Archivo: ddl/schema.sql
-- Descripción: Creación del esquema de base de datos para un sistema de inventario de RPG.

-- Crear la base de datos si no existe y seleccionarla
CREATE DATABASE IF NOT EXISTS inventario_rpg;
USE inventario_rpg;

-- Tabla para las categorías de los ítems
CREATE TABLE categorias_item (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(50) NOT NULL UNIQUE,
    descripcion TEXT
);

-- Tabla para almacenar todos los ítems del juego
CREATE TABLE items (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    nombre_item VARCHAR(100) NOT NULL,
    id_categoria INT,
    rareza ENUM('Común', 'Poco Común', 'Raro', 'Épico', 'Legendario') NOT NULL,
    precio_venta INT DEFAULT 0,
    CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES categorias_item(id_categoria),
    CONSTRAINT chk_precio_no_negativo CHECK (precio_venta >= 0)
);

-- Tabla para los personajes o jugadores
CREATE TABLE personajes (
    id_personaje INT AUTO_INCREMENT PRIMARY KEY,
    nombre_personaje VARCHAR(50) NOT NULL UNIQUE,
    nivel INT DEFAULT 1,
    clase VARCHAR(50)
);

-- Tabla de inventario que relaciona personajes con ítems (relación muchos a muchos)
CREATE TABLE inventario_personaje (
    id_inventario INT AUTO_INCREMENT PRIMARY KEY,
    id_personaje INT,
    id_item INT,
    cantidad INT DEFAULT 1,
    CONSTRAINT fk_personaje FOREIGN KEY (id_personaje) REFERENCES personajes(id_personaje),
    CONSTRAINT fk_item FOREIGN KEY (id_item) REFERENCES items(id_item),
    CONSTRAINT uc_personaje_item UNIQUE (id_personaje, id_item) -- Un personaje solo puede tener una fila por tipo de ítem
);
