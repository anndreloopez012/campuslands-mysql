-- DDL: Creación de base de datos y tablas para Inventario de Skins Shooter (Enfoque GROUP BY)
DROP DATABASE IF EXISTS db_skins_shooter_intermedio;
CREATE DATABASE db_skins_shooter_intermedio CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE db_skins_shooter_intermedio;

CREATE TABLE skins_shooter (
    id_skin INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre_skin VARCHAR(50) NOT NULL UNIQUE,
    arma VARCHAR(40) NOT NULL,
    rareza ENUM('Comun', 'Rara', 'Epica', 'Legendaria', 'Mitica') NOT NULL DEFAULT 'Comun',
    precio_monedas DECIMAL(10, 2) NOT NULL,
    estado_skin ENUM('disponible', 'equipado', 'en_venta', 'archivado') NOT NULL DEFAULT 'disponible',
    fecha_adquisicion DATE NOT NULL,
    CONSTRAINT chk_precio_skin CHECK (precio_monedas >= 0)
) ENGINE=InnoDB;