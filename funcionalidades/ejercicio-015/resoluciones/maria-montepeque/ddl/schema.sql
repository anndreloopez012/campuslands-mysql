-- funcionalidades/ejercicio-015 - maria-montepeque
-- Tematica: arquitectura 3D
USE campuslands_mysql;

DROP TABLE IF EXISTS pagos_proveedores;
DROP TABLE IF EXISTS proyectos_arquitectura;

CREATE TABLE proyectos_arquitectura (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    cliente VARCHAR(100) NOT NULL,
    presupuesto_total DECIMAL(12, 2) NOT NULL,
    saldo_disponible DECIMAL(12, 2) NOT NULL,
    estado ENUM('activo', 'pausado', 'cerrado') NOT NULL DEFAULT 'activo',
    CONSTRAINT chk_presupuesto_arquitectura CHECK (presupuesto_total > 0),
    -- Esta es la regla que hace visible por que hacen falta las transacciones:
    -- el saldo nunca puede quedar negativo.
    CONSTRAINT chk_saldo_no_negativo_arquitectura CHECK (saldo_disponible >= 0)
);

CREATE TABLE pagos_proveedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    proyecto_id INT NOT NULL,
    proveedor VARCHAR(100) NOT NULL,
    concepto VARCHAR(150) NOT NULL,
    monto DECIMAL(12, 2) NOT NULL,
    fecha_pago DATE NOT NULL,
    CONSTRAINT fk_pago_proyecto
        FOREIGN KEY (proyecto_id) REFERENCES proyectos_arquitectura (id),
    CONSTRAINT chk_monto_pago_arquitectura CHECK (monto > 0)
);
