-- DDL: Creación de base de datos y funciones SQL para Inventario de Skins Shooter
DROP DATABASE IF EXISTS db_skins_shooter_avanzado;
CREATE DATABASE db_skins_shooter_avanzado CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE db_skins_shooter_avanzado;

CREATE TABLE inventario_skins (
    id_skin INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre_skin VARCHAR(60) NOT NULL,
    arma_asociada VARCHAR(40) NOT NULL,
    rareza ENUM('Común', 'Rara', 'Épica', 'Legendaria', 'Mítica') NOT NULL DEFAULT 'Común',
    precio_monedas DECIMAL(10, 2) NOT NULL,
    nivel_desgaste DECIMAL(4, 3) NOT NULL DEFAULT 0.000, -- Rango de 0.000 a 1.000
    estado_inventario ENUM('disponible', 'equipado', 'en_venta', 'archivado') NOT NULL DEFAULT 'disponible',
    fecha_obtencion DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_precio CHECK (precio_monedas >= 0),
    CONSTRAINT chk_desgaste CHECK (nivel_desgaste >= 0.000 AND nivel_desgaste <= 1.000)
) ENGINE=InnoDB;

-- Creación de Función SQL personalizada para calcular el valor depreciado o ajustado según desgaste
DELIMITER //
CREATE FUNCTION fn_calcular_valor_real(
    p_precio DECIMAL(10,2), 
    p_desgaste DECIMAL(4,3)
) 
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE valor_real DECIMAL(10,2);
    -- Si el desgaste es alto, el valor disminuye proporcionalmente
    SET valor_real = p_precio * (1.000 - (p_desgaste * 0.5));
    RETURN valor_real;
END //
DELIMITER ;