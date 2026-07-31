-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_ejercicio_031;
CREATE DATABASE db_ejercicio_031;
USE db_ejercicio_031;

-- Tabla principal con validaciones profesionales
CREATE TABLE registros_base (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_item VARCHAR(80) NOT NULL,
    categoria VARCHAR(40) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    cantidad INT NOT NULL,
    estado ENUM('activo', 'pendiente', 'inactivo') DEFAULT 'activo',
    fecha_registro DATE NOT NULL,
    
    -- Restricciones de validación
    CONSTRAINT chk_valor_positivo CHECK (valor >= 0),
    CONSTRAINT chk_cantidad_no_negativa CHECK (cantidad >= 0)
);