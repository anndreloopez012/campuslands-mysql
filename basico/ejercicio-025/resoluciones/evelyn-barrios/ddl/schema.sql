-- ddl/schema.sql
-- Creación de la base de datos y tabla para el inventario del laboratorio químico.

CREATE DATABASE IF NOT EXISTS laboratorio_quimico;
USE laboratorio_quimico;

-- Tabla para gestionar el inventario de compuestos químicos
CREATE TABLE IF NOT EXISTS inventario_compuestos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_compuesto VARCHAR(100) NOT NULL,
    formula_quimica VARCHAR(50) NOT NULL UNIQUE,
    tipo_compuesto ENUM('Reactivo', 'Solvente', 'Catalizador', 'Producto') NOT NULL,
    cantidad_disponible_gramos DECIMAL(10, 2) NOT NULL,
    fecha_adquisicion DATE NOT NULL,
    ubicacion_almacen VARCHAR(50)
);

-- Fin del script