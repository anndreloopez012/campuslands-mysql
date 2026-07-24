
-- DDL: Creación de la base de datos y esquema para Inventario de Skins Shooter
DROP DATABASE IF EXISTS db_shooter_skins;
CREATE DATABASE db_shooter_skins CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE db_shooter_skins;

CREATE TABLE inventario_skins (
    id_skin INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre_skin VARCHAR(60) NOT NULL UNIQUE,
    arma_asociada VARCHAR(40) NOT NULL,
    rareza ENUM('comun', 'rara', 'epica', 'legendaria') NOT NULL DEFAULT 'comun',
    precio_mercado DECIMAL(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
    desgaste ENUM('factory_new', 'minimal_wear', 'field_tested', 'well_worn', 'battle_scarred') NOT NULL,
    disponible_intercambio BOOLEAN NOT NULL DEFAULT TRUE,
    fecha_obtencion DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_precio_positivo CHECK (precio_mercado >= 0.00)
) ENGINE=InnoDB;